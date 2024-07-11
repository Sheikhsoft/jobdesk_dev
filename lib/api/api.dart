import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class Api {
  final String baseUrl;
  final Dio _dio = Dio();

  Api({required this.baseUrl}) {
    _dio.options.baseUrl = baseUrl;
    _dio.options.receiveTimeout = const Duration(seconds: 10);
    _dio.options.connectTimeout = const Duration(seconds: 5);
    if (kDebugMode) _dio.interceptors.add(PrettyDioLogger());
  }

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
}
