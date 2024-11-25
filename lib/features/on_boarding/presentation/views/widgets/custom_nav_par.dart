import 'package:delivery_app/core/utils/app_String.dart';
import 'package:delivery_app/core/utils/app_text_Style.dart';
import 'package:flutter/material.dart';

class CustomNavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20),
      child: Align(
        alignment: Alignment.centerRight,
        child: Text(
          AppString.skip,
          style: CustomTextStyle.Parkinsans400Style12,
        ),
      ),
    );
  }
}
