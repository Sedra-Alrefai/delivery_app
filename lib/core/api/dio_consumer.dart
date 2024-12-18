import 'package:delivery_app/core/api/api_consumer.dart';
import 'package:delivery_app/core/api/api_interceptors.dart';
import 'package:delivery_app/core/api/end_points.dart';
import 'package:delivery_app/core/errors/exceptions.dart';
import 'package:dio/dio.dart';

class DioConsumer extends ApiConsumer {
  final Dio dio;

  DioConsumer({required this.dio}) {
    dio.options.baseUrl = EndPoint.baseUrl;
    dio.interceptors.add(ApiInterceptor());
    dio.interceptors.add(LogInterceptor(
      request: true,
      requestHeader: true,
      requestBody: true,
      responseHeader: true,
      responseBody: true,
      error: true,
    ));
  }

  @override
  Future<dynamic> delete(
    String path, {
    Object? data,
    Map<String, dynamic>? queryParameters,
    bool isFromData = false,
    Map<String, dynamic>? headers,
  }) async {
    try {
      final response = await dio.delete(
        path,
        data:
            isFromData ? FormData.fromMap(data as Map<String, dynamic>) : data,
        queryParameters: queryParameters,
        options: Options(headers: headers),
      );
      return response.data;
    } on DioException catch (e) {
      handleDioExceptions(e);
    }
  }

  @override
  Future<dynamic> get(
    String path, {
    Object? data,
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? headers,
  }) async {
    try {
      final response = await dio.get(
        path,
        queryParameters: queryParameters,
        options: Options(headers: headers),
      );
      return response.data;
    } on DioException catch (e) {
      handleDioExceptions(e);
    }
  }

  @override
  Future<dynamic> patch(
    String path, {
    Object? data,
    Map<String, dynamic>? queryParameters,
    bool isFromData = false,
    Map<String, dynamic>? headers,
  }) async {
    try {
      final response = await dio.patch(
        path,
        data:
            isFromData ? FormData.fromMap(data as Map<String, dynamic>) : data,
        queryParameters: queryParameters,
        options: Options(headers: headers),
      );
      return response.data;
    } on DioException catch (e) {
      handleDioExceptions(e);
    }
  }

  @override
  Future<dynamic> post(
    String path, {
    Object? data,
    Map<String, dynamic>? queryParameters,
    bool isFromData = false,
    Map<String, dynamic>? headers,
  }) async {
    try {
      final response = await dio.post(
        path,
        data:
            isFromData ? FormData.fromMap(data as Map<String, dynamic>) : data,
        queryParameters: queryParameters,
        options: Options(
          headers: headers ?? {"Content-Type": "application/json"},
        ),
      );
      return response.data;
    } on DioException catch (e) {
      handleDioExceptions(e);
    }
  }

  @override
  Future<dynamic> put(
    String path, {
    Object? data,
    Map<String, dynamic>? queryParameters,
    bool isFromData = false,
    Map<String, dynamic>? headers,
  }) async {
    try {
      final response = await dio.put(
        path,
        data:
            isFromData ? FormData.fromMap(data as Map<String, dynamic>) : data,
        queryParameters: queryParameters,
        options: Options(headers: headers),
      );
      return response.data;
    } on DioException catch (e) {
      handleDioExceptions(e);
    }
  }
}
