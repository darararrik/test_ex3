import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:test_3/core/data/data.dart';
import 'package:test_3/core/domain/domain.dart';
import 'package:test_3/core/presentation/presentation.dart';
import 'package:test_3/core/state/state.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final local = await LocalDataSource.init();
  final appRouter = AppRouter(localDataSource: local);
  runApp(
    MultiRepositoryProvider(
      providers: [
        RepositoryProvider<LocalDataSource>.value(value: local),
        RepositoryProvider<RemoteDataSource>(create: (context) => RemoteDataSource()),
        RepositoryProvider<ITokenRepository>(
          create: (context) => TokenRepositoryImpl(localDataSource: context.read()),
        ),
        RepositoryProvider<IAuthRepository>(
          create: (context) => AuthRepositoryImpl(
            localDataSource: context.read(),
            remoteDataSource: context.read(),
          ),
        ),
        RepositoryProvider<IPostRepository>(
          create: (context) => PostRepositoryImpl(remoteDataSource: context.read()),
        ),
      ],
      child: MultiBlocProvider(
        providers: [
          BlocProvider(create: (context) => AuthBloc(context.read())),
          BlocProvider(create: (context) => ThemeCubit()),
        ],
        child: Builder(
          builder: (context) {
            context.read<ThemeCubit>().initWithSystemTheme(context);
            return BlocBuilder<ThemeCubit, ThemeState>(
              builder: (context, state) {
                return MaterialApp.router(
                  routerConfig: appRouter.config(),
                  theme: state.theme,
                  supportedLocales: const [Locale('en')],
                  localizationsDelegates: const [
                    AppLocalizations.delegate,
                    GlobalMaterialLocalizations.delegate,
                    GlobalWidgetsLocalizations.delegate,
                    GlobalCupertinoLocalizations.delegate,
                  ],
                );
              },
            );
          },
        ),
      ),
    ),
  );
}
