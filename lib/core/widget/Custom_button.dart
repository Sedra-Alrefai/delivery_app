import 'package:delivery_app/core/utils/app_text_Style.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomButton extends StatelessWidget {
  CustomButton(
      {super.key,
      required this.onTap,
      required this.text,
      required this.color});
  VoidCallback? onTap;
  String text;
  Color color;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 340,
        height: 45,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(30),
        ),
        child: Center(
          child: Text(
            text,
            style: CustomTextStyle.Parkinsans300Style16.copyWith(
                color: Colors.white),
          ),
        ),
      ),
    );
  }
}
