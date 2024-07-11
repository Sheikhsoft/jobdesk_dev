part of 'init_dependencies.dart';

final serviceLocator = GetIt.instance;

Future<void> initDependencies() async {
  _initAuth();
  _initApp();

  var path = Directory.current.path;
  Hive.init(path);

  serviceLocator.registerLazySingletonAsync(
    () async => await Hive.openBox('jobDeskDb'),
  );

  serviceLocator.registerFactory(() => InternetConnection());

  serviceLocator.registerFactory<ConnectionChecker>(
    () => ConnectionCheckerImpl(
      serviceLocator(),
    ),
  );
}

void _initAuth() {
  serviceLocator.registerFactory<AuthenticationBloc>(
    () => AuthenticationBloc(),
  );
}

void _initApp() {
  // Datasource
}
