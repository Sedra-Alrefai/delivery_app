import 'package:delivery_app/core/api/end_points.dart';
import 'package:delivery_app/core/database/cache/cache_helper.dart';
import 'package:dio/dio.dart';

class ApiInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    options.headers.addAll({
      'Accept': 'application/json',
      'Content-Type': 'multipart/form-data',
      'Accept-Language': 'en',
      // 'User-Agent': 'PostmanRuntime/7.43.0',
    });

    options.headers[ApiKey.token] =
        CashHelper().getData(key: ApiKey.token) != null
            ? 'FOODAPI ${CashHelper().getData(key: ApiKey.token)}'
            : null;
    super.onRequest(options, handler);
  }
}
