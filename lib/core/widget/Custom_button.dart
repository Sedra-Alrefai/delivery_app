import 'package:delivery_app/core/utils/app_colors.dart';
import 'package:delivery_app/core/utils/app_text_Style.dart';
import 'package:flutter/material.dart';

class CustomBtn extends StatelessWidget {
  final Color? color;
  final String text;
  final VoidCallback? onPressed;
  const CustomBtn({super.key, this.color, required this.text, this.onPressed});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 56,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: color ?? AppColors.prymaryColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            )),
        onPressed: onPressed,
        child: Text(
          text,
          style: CustomTextStyle.poppins500Style24
              .copyWith(fontSize: 16, color: AppColors.offwhite),
        ),
      ),
    );
  }
}
