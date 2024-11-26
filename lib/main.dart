import 'package:flutter/material.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const DeliveryApp());
}

class DeliveryApp extends StatelessWidget {
  const DeliveryApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        // DeliveryHomePag.id: (context) => const DeliveryHomePage(),
        // LoginPage.id: (context) => const LoginPage(),
      },
      // initialRoute: LoginPage.id,
    );
  }
}
