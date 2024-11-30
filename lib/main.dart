import 'package:delivery_app/features/favorite/favorite_view.dart';
import 'package:delivery_app/features/home/presentation/views/home_view.dart';
import 'package:delivery_app/features/markets/presentation/views/markets_view.dart';
import 'package:delivery_app/features/user/user_view.dart';
import 'package:flutter/material.dart';

void main() {
//  WidgetsFlutterBinding.ensureInitialized();

  runApp(const DeliveryApp());
}
// =======
// import 'package:delivery_app/core/database/cache/cache_helper.dart';
// import 'package:delivery_app/core/routes/app_routes.dart';
// import 'package:delivery_app/core/service/servise_locator.dart';
// import 'package:delivery_app/core/utils/app_colors.dart';
// import 'package:flutter/material.dart';

// void main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   setupServiceLocator();
//   await getIt<CashHelper>().init();
//   return runApp(DeliveryApp());
// >>>>>>> origin/sedra
// }

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
