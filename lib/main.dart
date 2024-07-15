import 'dart:io';

import 'package:dev/app_router.dart';
import 'package:dev/bloc/authentication/authentication_bloc.dart';
import 'package:dev/bloc/language/language_bloc.dart';
import 'package:dev/bloc_Initialize.dart';
import 'package:dev/core/constant/app_const.dart';
import 'package:dev/core/localization/app_localization.dart';
import 'package:dev/core/theme/theme.dart';
import 'package:dev/init_dependencies.dart';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';



void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await initDependencies();

  if (Platform.isAndroid) {
    androidInfo = await DeviceInfoPlugin().androidInfo;
  }
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
      child: BlocBuilder<LanguageBloc, LanguageState>(
        builder: (context, languageState) {
          return MaterialApp.router(
            title: 'JobDesk',
            debugShowCheckedModeBanner: false,
            theme: context.lightThemeData(),
            darkTheme: context.darkThemeData(),
            themeMode: ThemeMode.dark,
            routerConfig: AppRouter.router,
            locale: languageState.locale,
            localizationsDelegates: const [
              AppLocalization.delegate,
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
            ],
            supportedLocales: const [
              Locale('en', ''), // English, no country code
              Locale('bn', ''), // Bangla, no country code
              Locale('de', ''),
            ],
          );
        },
      ),
    );
  }
}
