import 'package:dio/dio.dart';

class ApiInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    options.headers.addAll({
      'Accept': 'application/json',
      'Content-Type': 'multipart/form-data',
      'Accept-Language': 'en',
    });
    super.onRequest(options, handler);
  }
}
