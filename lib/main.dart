import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'package:test_3/core/data/data_source/local/local.dart';
import 'package:test_3/core/data/data_source/remote/remote.dart';
import 'package:test_3/core/data/repositories/auth_repository.dart';
import 'package:test_3/core/data/repositories/post_repository.dart';
import 'package:test_3/core/data/repositories/token_repository_impl.dart';
import 'package:test_3/core/domain/repositories/auth_repository.dart';
import 'package:test_3/core/domain/repositories/post_repository.dart';
import 'package:test_3/core/domain/repositories/token_repository.dart';
import 'package:test_3/core/presentation/l10n/app_localizations.dart';
import 'package:test_3/core/presentation/routing/router.dart';
import 'package:test_3/core/state/cubits/theme_cubit/theme_cubit.dart';

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
        providers: [BlocProvider(create: (context) => ThemeCubit())],
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
