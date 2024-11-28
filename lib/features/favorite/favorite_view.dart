import 'package:delivery_app/features/home/presentation/widget/Custom_bottom_navigator_bar.dart';
import 'package:flutter/material.dart';

class FavoriteView extends StatelessWidget {
  final int currentIndex = 2;
  const FavoriteView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text(' favorite View'),
      bottomNavigationBar: CustomBottomNavBar(
        currentIndex: currentIndex,
      ),
    );
  }
}
