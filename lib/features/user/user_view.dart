import 'package:delivery_app/core/function/navigation.dart';
import 'package:delivery_app/features/favorite/favorite_view.dart';
import 'package:delivery_app/features/home/presentation/views/home_view.dart';
import 'package:delivery_app/features/home/presentation/widget/Custom_bottom_navigator_bar.dart';
import 'package:delivery_app/features/markets/presentation/views/markets_view.dart';
import 'package:flutter/material.dart';

class UserView extends StatelessWidget {
  final int currentIndex;
  const UserView({super.key, this.currentIndex = 3});

  void _navigateTo(BuildContext context, int index) {
    if (index != currentIndex) {
      switch (index) {
        case 0:
          Navigator.pushReplacement(
              context, MaterialPageRoute(builder: (_) => const HomeView()));
          break;
        case 1:
          Navigator.pushReplacement(
              context, MaterialPageRoute(builder: (_) => const MarketsView()));
          break;
        case 2:
          Navigator.pushReplacement(
              context, MaterialPageRoute(builder: (_) => const FavoriteView()));
          break;
        case 3:
          Navigator.pushReplacement(
              context, MaterialPageRoute(builder: (_) => const UserView()));
          break;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const Text(' user View'),
      bottomNavigationBar: CustomBottomNavigatorBar(
        currentIndex: 3,
        onTap: (index) {
          _navigateTo(context, index);
        },
      ),
    );
  }
}
