import 'package:dev/core/constant/app_const.dart';
import 'package:hive/hive.dart';

class LocalStorageService {
  final Box localDb;

  LocalStorageService({required this.localDb});

  Future<String> getString(String key, {String? defaultValue}) async {
    return localDb.get(key) ?? defaultValue ?? "";
  }

  Future<void> setString(String key, String? value) async {
     localDb.put(key, value ?? '');
  }

  Future<bool> getBool(String key) async {
  
    return localDb.get(key) ?? false;
  }

  Future<void> setBool(String key, bool? value) async {
   
    localDb.put(key, value ?? false);
  }

  Future<void> resetCachedData() async {
    await setString(AppConst.geoInfoData, '');
    await setString(AppConst.geoInfoSaveDate, '');
    await setString(AppConst.typeInfoData, '');
    await setString(AppConst.typeInfoLang, '');
    await setString(AppConst.typeInfoSaveDate, '');
  }

  Future<void> initAppApi() async {
  
    await setBool(AppConst.isCandidateHomeDashboardLoaded, false);
    await setBool(AppConst.isMyProfileScreenLoaded, false);
    await setBool(AppConst.isDashboardLoaded, false);
    await setBool(AppConst.isVacancyManagerLoaded, false);
    await setBool(AppConst.isMyCandidateLoaded, false);
    await setBool(AppConst.isLearningResourceLoaded, false);
    await setBool(AppConst.isClientsContactLoaded, false);
    await setBool(AppConst.isPurchasesLoaded, false);
    await setBool(AppConst.isMyEmployeesLoaded, false);
    await setBool(AppConst.isNoticeBoardLoaded, false);
    await setBool(AppConst.isOnlineProfileChartLoaded, false);
    await setBool(AppConst.isVideoResourceLoaded, false);
  }
}
