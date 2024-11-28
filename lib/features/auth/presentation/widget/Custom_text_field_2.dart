import 'package:delivery_app/core/utils/app_text_Style.dart';
import 'package:flutter/material.dart';

class CustomTextField2 extends StatelessWidget {
  const CustomTextField2({
    Key? key,
    this.hintText,
    this.icon,
    required this.color,
    required this.textColor,
    this.label,
  }) : super(key: key);

  final String? hintText;
  final Icon? icon;
  final Color color;
  final Color textColor;
  final String? label;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      child: TextField(
        decoration: InputDecoration(
          label: label != null
              ? Text(
                  label!,
                  style: CustomTextStyle.Parkinsans300Style16.copyWith(
                    color: Colors.grey,
                    fontSize: 12,
                  ),
                )
              : null,
          prefixIcon: Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: icon,
          ),
          hintText: hintText,
          hintStyle: CustomTextStyle.Parkinsans300Style16.copyWith(
              color: Colors.grey, fontSize: 12),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          filled: true,
          fillColor: color,
        ),
        style: TextStyle(color: textColor),
      ),
    );
  }
}
