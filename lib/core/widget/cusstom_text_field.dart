import 'package:delivery_app/core/utils/app_text_style.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {super.key,
      required this.hintText,
      required this.icon,
      required this.color,
      required this.textColor,
      required this.label,
      required this.labelColor,
      this.controller});
  final String hintText;
  final Icon icon;
  final Color color;
  final Color textColor;
  final String label;
  final Color labelColor;
  final TextEditingController? controller;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70,
      child: TextField(
        decoration: InputDecoration(
          label: Text(
            label,
            style: CustomTextStyle.parkinsans300Style16.copyWith(
              color: labelColor,
              fontSize: 12,
            ),
          ),
          contentPadding:
              const EdgeInsets.only(left: 15, right: 80, top: 15, bottom: 15),
          hintText: hintText,
          hintStyle: const TextStyle(color: Colors.grey, fontSize: 14),
          prefixIcon: Padding(
            padding: const EdgeInsets.only(left: 15.0),
            child: icon,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(24),
            borderSide: const BorderSide(color: Colors.grey, width: 2),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(24),
            borderSide: const BorderSide(color: Colors.grey, width: 2),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.grey, width: 2),
            borderRadius: BorderRadius.circular(24),
          ),
          filled: true,
          fillColor: color,
        ),
        style: TextStyle(color: textColor),
      ),
    );
  }
}
