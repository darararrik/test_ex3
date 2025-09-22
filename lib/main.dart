import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:talker_flutter/talker_flutter.dart';

import 'package:test_3/core/data/data.dart';
import 'package:test_3/core/l10n/l10n.dart';
import 'package:test_3/core/routing/router.dart';
import 'package:test_3/core/theme/cubit/theme_cubit.dart';
import 'package:test_3/features/auth/auth.dart';
import 'package:test_3/features/post/post.dart';
import 'package:test_3/features/profile/profile.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final talker = TalkerFlutter.init();
  final local = await LocalDataSource.init();
  final appRouter = AppRouter(localDataSource: local);
  runApp(
    MultiRepositoryProvider(
      providers: [
        RepositoryProvider.value(value: talker),
        RepositoryProvider<LocalDataSource>.value(value: local),
        RepositoryProvider<RemoteDataSource>(create: (context) => RemoteFull(local, talker)),
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
        RepositoryProvider<IUserRepository>(
          create: (context) => UserRepositoryImpl(remoteDataSource: context.read()),
        ),
      ],
      child: MultiBlocProvider(
        providers: [
          BlocProvider(create: (context) => AuthBloc(context.read())),
          BlocProvider(create: (context) => ThemeCubit()),
          BlocProvider(
            create: (context) =>
                ProfileBloc(context.read())..add(const ProfileEvent.getProfile()),
          ),
        ],
        child: Builder(
          builder: (context) {
            context.read<ThemeCubit>().initWithSystemTheme(MediaQuery.of(context));
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
