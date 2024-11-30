import 'package:delivery_app/core/utils/app_colors.dart';
import 'package:delivery_app/core/widget/cusstom_text_field.dart';

import 'package:flutter/material.dart';

class EmailAndPasswordFields extends StatelessWidget {
  const EmailAndPasswordFields();

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 50),
          child: CustomTextField(
            label: 'Email or Phone',
            labelColor: Colors.grey,
            hintText: 'Email or Phone',
            textColor: Colors.grey,
            icon: Icon(
              Icons.person,
              color: Colors.grey,
            ),
            color: Color(0xff1A2E35),
          ),
        ),
        SizedBox(height: 24),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 50),
          child: CustomTextField(
            labelColor: Colors.grey,
            label: 'Passowrd',
            hintText: 'Password',
            textColor: Colors.grey,
            icon: Icon(
              Icons.password,
              color: Colors.grey,
            ),
            color: Color(0xff1A2E35),
          ),
        ),
      ],
    );
  }
}
