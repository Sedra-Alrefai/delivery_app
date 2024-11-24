import 'package:delivery_app/core/routes/app_routes.dart';
import 'package:flutter/material.dart';

void main() {
  return runApp(DeliveryApp());
}

class DeliveryApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: router,
    );
  }
}
