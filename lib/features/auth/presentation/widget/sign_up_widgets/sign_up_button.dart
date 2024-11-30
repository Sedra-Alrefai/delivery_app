import 'package:delivery_app/core/function/navigation.dart';
import 'package:delivery_app/core/utils/app_colors.dart';
import 'package:delivery_app/core/widget/Custom_button.dart';
import 'package:flutter/material.dart';

class SignUpButton extends StatelessWidget {
  const SignUpButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomButton(
      text: 'Sign Up',
      color: AppColors.darkTealBlue,
      onTap: () {
        CustomNavigationReplacement(context, "/profileView");
      },
    );
  }
}