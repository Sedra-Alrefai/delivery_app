import 'package:delivery_app/features/home/presentation/widget/Custom_bottom_navigator_bar.dart';
import 'package:flutter/material.dart';

class MarketsView extends StatelessWidget {
  final int currentIndex = 1;
  const MarketsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text(' Markets View'),
      bottomNavigationBar: CustomBottomNavBar(
        currentIndex: currentIndex,
      ),
    );
  }
}
