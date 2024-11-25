import 'package:delivery_app/core/utils/app_String.dart';
import 'package:delivery_app/core/utils/app_colors.dart';
import 'package:delivery_app/core/utils/app_text_Style.dart';
import 'package:delivery_app/core/widget/Custom_button.dart';
import 'package:delivery_app/features/on_boarding/presentation/views/widgets/custom_nav_par.dart';
import 'package:delivery_app/features/on_boarding/presentation/views/widgets/on_boarding_widget_view.dart';
import 'package:flutter/material.dart';

class OnBoardingView extends StatelessWidget {
  const OnBoardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: ListView(
            physics: const BouncingScrollPhysics(),
            children: [
              const SizedBox(
                height: 44,
              ),
              CustomNavBar(),
              onBoardingWidgetBody(),
              const SizedBox(
                height: 100,
              ),
              CustomButton(
                color: AppColors.tealGreen,
                onTap: () {},
                text: 'NEXT',
              ),
              const SizedBox(
                height: 26,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
