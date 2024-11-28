import 'package:delivery_app/features/home/presentation/widget/Custom_bottom_navigator_bar.dart';
import 'package:flutter/material.dart';

class UserView extends StatelessWidget {
  final int currentIndex = 3;
  const UserView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const Text(' user View'),
      bottomNavigationBar: CustomBottomNavBar(currentIndex: currentIndex),
    );
  }
}
