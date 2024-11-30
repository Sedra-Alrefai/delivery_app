import 'package:delivery_app/core/function/navigation.dart';
import 'package:delivery_app/core/utils/app_colors.dart';
import 'package:delivery_app/core/widget/Custom_button.dart';
import 'package:delivery_app/features/auth/presentation/widget/Custom_text_field_2.dart';
import 'package:flutter/material.dart';

class ContainertoLockView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 600,
          decoration: BoxDecoration(
            color: AppColors.darkTealBlue,
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(40),
              topRight: Radius.circular(40),
            ),
          ),
        ),
        Positioned(
          top: 80, // تعديل مكان الحقل
          left: 40,
          right: 40,
          child: CustomTextField2(
            hintText: 'Email',
            icon: Icon(
              Icons.email,
              color: Colors.grey,
            ),
            color: AppColors.darkTealBlue,
            textColor: Colors.grey,
            label: 'Email',
          ),
        ),
        Positioned(
            top: 180, // تعديل مكان الحقل
            left: 40,
            right: 40,
            child: CustomButton(
              text: 'Rest Password',
              color: AppColors.tealGreen,
            )),
        Positioned(
          top: 280,
          left: 180,
          // right: 100,
          child: GestureDetector(
            onTap: () {
              CustomNavigationReplacement(context, '/SignInView');
            },
            child: const Text(
              'Back to Login',
              style: TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.bold,
                fontFamily: 'Parkinsans',
                fontSize: 20,
                decoration: TextDecoration.underline,
                decorationColor: Colors.grey,
              ),
            ),
          ),
        ),
      ],
    );
  }
}