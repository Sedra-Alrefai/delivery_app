import 'package:delivery_app/features/favorite/favorite_view.dart';
import 'package:delivery_app/features/home/presentation/views/home_view.dart';
import 'package:delivery_app/features/markets/markets_view.dart';
import 'package:delivery_app/features/user/user_view.dart';
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
      initialRoute: '/HomeView',
      routes: {
        '/HomeView': (context) => const HomeView(),
        '/MarketsView': (context) => const MarketsView(),
        '/FavoriteView': (context) => const FavoriteView(),
        '/UserView': (context) => const UserView(),
      },
    );
  }
}
