import 'package:delivery_app/core/api/end_points.dart';
import 'package:delivery_app/core/database/cache/cache_helper.dart';
import 'package:dio/dio.dart';

class ApiInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    options.headers.addAll({
      'Accept': 'application/json',
    });

    String? token = CashHelper().getData(key: ApiKey.token);
    if (token != null) {
      options.headers[ApiKey.token] = 'FOODAPI $token';
      // Print the token being sent
      print("Request Headers: ${options.headers}");
    }

    super.onRequest(options, handler);
  }
}
