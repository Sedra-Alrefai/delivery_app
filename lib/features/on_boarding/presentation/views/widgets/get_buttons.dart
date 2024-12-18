import 'package:delivery_app/core/function/navigation.dart';
import 'package:delivery_app/core/utils/app_String.dart';
import 'package:delivery_app/core/utils/app_colors.dart';
import 'package:delivery_app/core/utils/app_text_Style.dart';
import 'package:delivery_app/core/widget/Custom_button.dart';
import 'package:delivery_app/features/on_boarding/data/models/on_boarding_models.dart';
import 'package:flutter/material.dart';

class GetButtons extends StatelessWidget {
  final int currentIndex;

  GetButtons({super.key, required this.currentIndex, required this.controller});
  final PageController controller;
  @override
  Widget build(BuildContext context) {
    if (currentIndex == onBoardingData.length - 1) {
      return Column(
        children: [
          CustomButton(
            text: 'NEXT',
            color: AppColors.darkTealBlue,
            onTap: () {
              CustomNavigationReplacement(context, '/SignUpView');
            },
          ),
          const SizedBox(
            height: 8,
          ),
          GestureDetector(
            onTap: () {
              CustomNavigationReplacement(context, '/SignUpView');
            },
            child: Text(
              AppString.newAccount,
              style: CustomTextStyle.Parkinsans300Style16.copyWith(
                  fontSize: 13,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey),
            ),
          ),
        ],
      );
    } else {
      return Column(
        children: [
          CustomButton(
            color: AppColors.darkTealBlue,
            onTap: () {
              controller.nextPage(
                  duration: Duration(milliseconds: 200),
                  curve: Curves.bounceIn);
            },
            text: 'NEXT',
          ),
        ],
      );
    }
  }
}
