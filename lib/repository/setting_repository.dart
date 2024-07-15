import 'package:dev/api/api.dart';
import 'package:dev/core/error/exceptions.dart';
import 'package:dev/core/error/failures.dart';
import 'package:dev/core/network/connection_checker.dart';
import 'package:dev/model/geoinfo.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:fpdart/fpdart.dart';

class SettingRepository {
  final Api api;
  final ConnectionChecker connectionChecker;

  SettingRepository({required this.api, required this.connectionChecker});

   Future<Either<Failure,GeoInfo?>> getGeoLocation() async{
   
    try {
      // final response = await _dio.get("${baseUrl}api/HomeApp/jdp/mepi/false");
      // _dio.options.headers = {
      //   "token":
      //       "52158475DFDC4D21BE6565F56CB3FA547352B8E42EDE48188F435866B254D0E9"
      // };
      setUrlHeader({"token":
            "52158475DFDC4D21BE6565F56CB3FA547352B8E42EDE48188F435866B254D0E9"});
      Response response = await api
          .apiGetRequest(endPont:  'api/HomeApp/jdp/mepi/false',);
      debugPrint("_____________ Start getGeoLocation ____________________");
      debugPrint("${response.data}");
      debugPrint("_____________ End getGeoLocation ____________________");
      final res = response.data;
      final GeoInfo geoInfo = GeoInfo.fromJson(res);

   
      return right(geoInfo) ;
    } on ServerException catch (e) {
      
      await api.sendApiExceptionReport(
          functionName: "getGeoLocation",
          endPont: "api/HomeApp/jdp/mepi/false",
          message: e.toString());
      return left(Failure(e.message));
    }


  }

  getTypeList({
    required String languageCode,
    bool? isLangChange,
  }) {}

  getSupportedLocalesList(String lang) {}

  void setUrlHeader(Map<String, String> header) {}
}
