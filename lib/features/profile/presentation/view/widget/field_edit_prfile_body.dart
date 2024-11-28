import 'package:delivery_app/features/auth/presentation/widget/Custom_text_field_2.dart';
import 'package:flutter/material.dart';

class FieldEditPrfileBody extends StatelessWidget {
  const FieldEditPrfileBody(
      {super.key, required this.title, required this.topPadding});
  final String title;
  final double topPadding;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 40, right: 40, top: topPadding),
        child: CustomTextField2(
          hintText: title,
          color: Color(0xffFFFFFF),
          textColor: Colors.grey,
        ));
  }
}
