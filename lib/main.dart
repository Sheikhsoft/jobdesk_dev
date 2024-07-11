import 'package:dev/app_router.dart';
import 'package:dev/bloc/authentication/authentication_bloc.dart';
import 'package:dev/bloc_Initialize.dart';
import 'package:dev/core/theme/theme.dart';
import 'package:dev/init_dependencies.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initDependencies();
  runApp(MultiBlocProvider(
      providers: BlocInitialize.providers, child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthenticationBloc, AuthenticationState>(
      listener: (context, state) {
        AppRouter.router.refresh();
      },
      child: MaterialApp.router(
        title: 'JobDesk',
        theme: context.lightThemeData(),
        darkTheme: context.darkThemeData(),
        themeMode: ThemeMode.dark,
        routerConfig: AppRouter.router,
      ),
    );
  }
}
