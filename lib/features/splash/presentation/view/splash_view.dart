import 'package:delivery_app/core/function/navigation.dart';
import 'package:delivery_app/features/splash/presentation/view/splash_view_body.dart';
import 'package:flutter/material.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    delayedNavigate(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SplashViewBody(),
    );
  }
}

void delayedNavigate(context) {
  Future.delayed(
      const Duration(
        seconds: 2,
      ), () {
    CustomNavigationReplacement(context, '/onBoarding');
  });
}
