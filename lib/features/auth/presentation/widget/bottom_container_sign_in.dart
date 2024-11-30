import 'package:delivery_app/core/function/navigation.dart';
import 'package:delivery_app/core/utils/app_colors.dart';
import 'package:delivery_app/core/widget/Custom_button.dart';
import 'package:delivery_app/features/auth/presentation/view/forget_password.dart';
import 'package:flutter/material.dart';

class BottomContainer extends StatelessWidget {
  const BottomContainer();

  void navigateToForgotPassword(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => ForgetPasswordView()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(50),
          topRight: Radius.circular(50),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: () {
              CustomNavigationReplacement(context, '/ForgetPasswordView');
            },
            child: const Text(
              'Forgot Password?',
              style: TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.bold,
                fontFamily: 'Parkinsans',
                fontSize: 15,
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
              fontSize: 15,
              fontWeight: FontWeight.bold,
              fontFamily: 'Parkinsans',
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