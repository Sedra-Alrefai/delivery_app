import 'package:delivery_app/features/home/presentation/views/home_view.dart';
import 'package:delivery_app/features/home/presentation/widget/custom_bottom_navigator_bar.dart';
import 'package:delivery_app/features/markets/presentation/views/markets_view.dart';
import 'package:delivery_app/features/profile/presentation/view/profile_view.dart';
import 'package:flutter/material.dart';

class FavoriteView extends StatelessWidget {
  final int currentIndex;
  const FavoriteView({super.key, this.currentIndex = 2});

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
              context, MaterialPageRoute(builder: (_) => const ProfileView()));
          break;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const Text(' favorite View'),
      bottomNavigationBar: CustomBottomNavigatorBar(
        currentIndex: 2,
        onTap: (index) {
          _navigateTo(context, index);
        },
      ),
    );
  }
}
