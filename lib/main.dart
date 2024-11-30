import 'package:delivery_app/core/database/cache/cache_helper.dart';
import 'package:delivery_app/core/routes/app_routes.dart';
import 'package:delivery_app/core/service/servise_locator.dart';
import 'package:delivery_app/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setupServiceLocator();
  await getIt<CashHelper>().init();
  return runApp(DeliveryApp());
}

class DeliveryApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: ThemeData(scaffoldBackgroundColor: AppColors.afwait),
      debugShowCheckedModeBanner: false,
      routerConfig: router,
    );
  }
}
