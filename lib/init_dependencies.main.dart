part of 'init_dependencies.dart';

final serviceLocator = GetIt.instance;

Future<void> initDependencies() async {
  Hive.defaultDirectory = (await getApplicationDocumentsDirectory()).path;

  serviceLocator.registerLazySingleton(
    () => Hive.box(name: 'jobDeskDB'),
  );

  serviceLocator.registerFactory(() => InternetConnection());

  serviceLocator.registerFactory<ConnectionChecker>(
    () => ConnectionCheckerImpl(
      serviceLocator(),
    ),
  );
  serviceLocator.registerFactory<Api>(
    () => Api(baseUrl: 'http://www.jobdesk.cloud/'),
  );
  serviceLocator.registerFactory<AuthRepository>(
    () => AuthRepository(
      api: serviceLocator(),
      connectionChecker: serviceLocator(),
    ),
  );
  serviceLocator.registerFactory<LocalStorageService>(
    () => LocalStorageService(
      localDb: serviceLocator(),
    ),
  );

  _initAuth();
  _initApp();
}

void _initAuth() {
  serviceLocator.registerFactory<SettingRepository>(
    () => SettingRepository(
      api: serviceLocator(),
      connectionChecker: serviceLocator(),
    ),
  );
  serviceLocator.registerFactory<AuthenticationBloc>(
    () => AuthenticationBloc(
      authRepository: serviceLocator(),
    ),
  );
  serviceLocator.registerFactory<LanguageBloc>(
    () => LanguageBloc(
      geoBloc: serviceLocator(),
      settingRepository: serviceLocator(),
    ),
  );
  serviceLocator.registerFactory<GeoInfoCubit>(
    () => GeoInfoCubit(
      settingRepository: serviceLocator(),
      localStorageService: serviceLocator(),
    ),
  );
}

void _initApp() {
  // Datasource
}
