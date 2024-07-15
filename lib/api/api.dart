import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class Api {
  final String baseUrl;
  final Dio _dio = Dio();

  Api({required this.baseUrl}) {
    _dio.options.baseUrl = baseUrl;
    _dio.options.receiveTimeout = const Duration(seconds: 5);
    _dio.options.connectTimeout = const Duration(seconds: 5);
    if (kDebugMode) _dio.interceptors.add(PrettyDioLogger());    
    _dio.options.headers = urlHeader;
  }

    static void setUrlHeader(Map<String, String> header) {
    urlHeader.addAll(header);
  }

  static Map<String, String> urlHeader = {
    "content-type": "application/json",
    "accept": "application/json",
  };

  Future<Response> apiPostRequest({
    required String endPont,
    dynamic data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    void Function(int, int)? onSendProgress,
    void Function(int, int)? onReceiveProgress,
  }) async {
    Response response = await _dio.post(endPont,
        data: data,
        queryParameters: queryParameters,
        options: options,
        onSendProgress: onSendProgress,
        onReceiveProgress: onReceiveProgress);
    return response;
  }

  Future<Response> apiGetRequest({
    required String endPont,
    dynamic data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    void Function(int, int)? onReceiveProgress,
  }) async {
    Response response = await _dio.get(endPont,
        queryParameters: queryParameters,
        options: options,
        onReceiveProgress: onReceiveProgress);
    return response;
  }

    Future<void> sendApiExceptionReport(
      {required String functionName,
      required String endPont,
      required String message}) async {
    final now = DateTime.now().millisecondsSinceEpoch;
    final Dio dio = Dio();
    dio.options.headers = {
      "content-type": "application/json",
      "accept": "application/json",
      "Authorization": "Bearer bbmh3qgnPA_CWr7pwSxwDq844_ZWBqLGKc4wsV7o"
    };
    if (kDebugMode) dio.interceptors.add(PrettyDioLogger());
    String error_type =
        kDebugMode ? "dev_error_mobileapp_$now" : "error_mobileapp_$now";
    debugPrint(
        "FunctionName : $functionName ApiUrl: $baseUrl$endPont Exception: $message");
    try {
      await dio.put(
          "https://api.cloudflare.com/client/v4/accounts/3994118a483f485d38a8dba5306a253b/storage/kv/namespaces/a4ed20dfd7f94f63b7a03a977e5128f2/values/$error_type",
          data:
              "FunctionName : $functionName ApiUrl: $baseUrl$endPont Exception: $message");
    } catch (e) {
      debugPrint(e.toString());
    }
  }
}
