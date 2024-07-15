import 'dart:convert';
import 'dart:io';

import 'package:dev/core/constant/app_const.dart';
import 'package:dev/model/geoinfo.dart';
import 'package:dev/repository/setting_repository.dart';
import 'package:dev/service/storage_service.dart';
import 'package:device_info_plus/device_info_plus.dart';

import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';

part 'geo_info_state.dart';

List<Map<String, dynamic>> getTypeData((List<dynamic>, String) record) {
  var (typeList, value) = record;

  final countryList = typeList.where((t) => t["Type"] == value).toList();
  final countryResult =
      countryList.map((e) => e as Map<String, dynamic>).toList();
  return countryResult;
}

class GeoInfoCubit extends Cubit<GeoInfoState> {
  final SettingRepository settingRepository;
  final LocalStorageService localStorageService;
  GeoInfoCubit({
    required this.settingRepository,
    required this.localStorageService,
  }) : super(GeoInfoState.initial());

  Future<void> getGeoInfo({

    bool isLandingpage = false,
  }) async {
    GeoInfo? info;
    emit(state.copyWith(isLoading: true));
    Map<String, String> header = {};
    String deviceId = "";
    String deviceName = "";
    String appUserCountryCode = "";
    String appLanguageCode = "";

    final geoInfoData =
        await localStorageService.getString(AppConst.geoInfoData);
    final geoInfoSaveDate =
        await localStorageService.getString(AppConst.geoInfoSaveDate);
    bool callApi = true;
    if (geoInfoSaveDate.isNotEmpty) {
      final saveDate = DateTime.tryParse(geoInfoSaveDate);
      if (saveDate != null) {
        final int timeDiff = DateTime.now().difference(saveDate).inDays;
        if (timeDiff > 2) {
          callApi = false;
        }
      }
    }

    if (geoInfoData.isEmpty || !callApi) {
    final result   = await settingRepository.getGeoLocation();
    result.fold((l){}, (r){
      info = r;

    });
    } else {
      final res = json.decode(geoInfoData);
      info = GeoInfo.fromJson(res);
    }
    if (info == null) {
      Fluttertoast.showToast(msg: "Something went wrong.");
      return emit(state.copyWith(isLoading: false, isFailed: true));
    }

    var lang = await localStorageService.getString('lang', defaultValue: 'en');

    if (info != null && info!.ipObject != null) {
      if (Platform.isAndroid) {
        deviceId = androidInfo != null ? androidInfo!.id : '';
        deviceName = androidInfo != null ? androidInfo!.model : '';
        appUserCountryCode = info?.ipObject!.countryCode != null
            ? info!.ipObject!.countryCode!.toLowerCase()
            : '';
        appLanguageCode = lang;
      } else {
        DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();
        IosDeviceInfo iosInfo = await deviceInfo.iosInfo;
        deviceId = iosInfo.name;
        deviceName = iosInfo.utsname.machine;
        appUserCountryCode = info!.ipObject!.countryCode != null
            ? info!.ipObject!.countryCode!.toLowerCase()
            : '';
        appLanguageCode = lang;
      }

      header = {
        'cookie':
            'IsMobile=true;DeviceId=$deviceId;DeviceName=$deviceName;AppUserCountryCode=$appUserCountryCode;AppLanguageCode=$appLanguageCode'
      };
      settingRepository.setUrlHeader(header);
    }

    emit(state.copyWith(
        geoInfo: info,
        isLoading: false,
        isFailed: false,
        isTypeInfoLoading: true));
    await settingRepository.getSupportedLocalesList(lang);
    // if (info.ipObject != null &&
    //     info.ipObject!.langCode?.toLowerCase() == "bn") {
    //   context
    //       .read<LanguageBloc>()
    //       .add(LoadLanguage(const Locale("bn", ''), context));
    //   return;
    // }
    await getTypeInfoData(lang: lang);
  }

  Future<void> getTypeInfoData(
      {String lang = 'en', bool isLangChange = false}) async {
    final List<dynamic> typeList = await settingRepository.getTypeList(
        languageCode: lang, isLangChange: isLangChange);

    if (typeList.isNotEmpty) {
      emit(state.copyWith(
        typeInfoList: typeList,
      ));
      final countryList =
          await compute(getTypeData, (typeList, "System.Country"));

      final languageListList =
          await compute(getTypeData, (typeList, "System.Language"));

      emit(state.copyWith(
          countryList: countryList,
          languageList: languageListList,
          isTypeInfoLoading: false));
    } else {
      emit(state.copyWith(isFailed: true, isTypeInfoLoading: false));
    }
  }
}
