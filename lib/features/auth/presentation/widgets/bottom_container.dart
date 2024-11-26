import 'package:delivery_app/core/utils/app_colors.dart';
import 'package:delivery_app/core/widget/Custom_button.dart';
import 'package:delivery_app/features/auth/presentation/view/forgot_password.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class BottomContainer extends StatelessWidget {
  const BottomContainer();

  void navigateToForgotPassword(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const ForgotPasswordPage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: () => navigateToForgotPassword(context),
            child: const Text(
              'Forgot Password?',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 20,
                decoration: TextDecoration.underline,
              ),
            ),
          ),
          const SizedBox(height: 32),
          CustomButton(
            onTap: () {
              // وظيفة الزر Login
            },
            text: 'Login',
            color: AppColors.tealGreen,
          ),
          const SizedBox(height: 12),
          const Text(
            'or',
            style: TextStyle(
              color: Colors.grey,
              fontSize: 20,
            ),
          ),
          const SizedBox(height: 12),
          CustomButton(
            onTap: () {
              // وظيفة الزر Create an Account
            },
            text: 'Create an Account',
            color: AppColors.tealGreen,
          ),
        ],
      ),
    );
  }
}
