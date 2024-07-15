import 'package:device_info_plus/device_info_plus.dart';

AndroidDeviceInfo? androidInfo;

abstract class AppConst {
  static double mobileMaxWidth = 600.0;
  static double desktopMaxWidth = 1000.0;
  static const String isCandidateHomeDashboardLoaded =
      "IsCandidateHomeDashboardLoaded";
  static const String isMyProfileScreenLoaded = "IsMyProfileScreenLoaded";
  static const String landingPageSkip = 'LandingPageSkip';
  static const String isDashboardLoaded = "IsDashboardLoaded";
  static const String isVacancyManagerLoaded = "IsVacancyManagerLoaded";
  static const String isMyCandidateLoaded = "IsMyCandidateLoaded";
  static const String isLearningResourceLoaded = "IsLearningResourceLoaded";
  static const String isClientsContactLoaded = "IsClientsContactLoaded";
  static const String isPurchasesLoaded = "IsPurchasesLoaded";
  static const String isMyEmployeesLoaded = "IsMyEmployeesLoaded";
  static const String isNoticeBoardLoaded = "IsNoticeBoardLoaded";
  static const String isOnlineProfileChartLoaded = "IsOnlineProfileChartLoaded";
  static const String isVideoResourceLoaded = "IsVideoResourceLoaded";
  static const String bearerToken = "token";
  static const String geoInfoData = "geoInfoData";
  static const String geoInfoSaveDate = "geoInfoSaveDate";
  static const String typeInfoData = "typeInfoData";
  static const String typeInfoLang = "typeInfoLang";
  static const String typeInfoSaveDate = "typeInfoSaveDate";
}
