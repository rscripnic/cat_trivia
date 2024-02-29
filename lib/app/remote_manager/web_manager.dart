import 'dart:typed_data';

import 'package:cat_trivia/app/model/app_environment.dart';
import 'package:cat_trivia/app/model/exception.dart';
import 'package:cat_trivia/app/remote_manager/model/remote_reponse.dart';
import 'package:dio/dio.dart';

abstract interface class WebManagerContract {
  Future<RemoteResponse> get(String api, Map<String, dynamic> requestMap);
  Future<Uint8List?> getMediaData(String api, Map<String, dynamic> requestMap);
}

class WebManager implements WebManagerContract {
  late final Dio _dio;

  WebManager(AppEnvironment appEnvironment) {
    _dio = Dio(BaseOptions(
      baseUrl: appEnvironment.remoteAddresses,
      connectTimeout: const Duration(milliseconds: 30000),
      receiveTimeout: const Duration(milliseconds: 30000),
    ));
  }

  @override
  Future<RemoteResponse> get(
      String api, Map<String, dynamic> requestMap) async {
    RemoteResponse response = RemoteResponse();
    try {
      var httpResponse = await _dio.get("/$api", queryParameters: requestMap);
      response.httpCode = httpResponse.statusCode;
      if (!response.httpIsSuccess()) {
        throw ServerException();
      }

      response.data = httpResponse.data;
    } catch (ex) {
      response.httpMessage = ex.toString();
    }
    return response;
  }

  @override
  Future<Uint8List?> getMediaData(
      String api, Map<String, dynamic> requestMap) async {
    try {
      Response<Uint8List> httpResponse = await _dio.get<Uint8List>("/$api",
          queryParameters: requestMap,
          options: Options(responseType: ResponseType.bytes));

      return httpResponse.data;
    } catch (ex) {}
    return null;
  }
}
