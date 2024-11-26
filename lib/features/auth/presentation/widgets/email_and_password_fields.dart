import 'package:delivery_app/core/widget/custom_text_field.dart';
import 'package:flutter/material.dart';

class EmailAndPasswordFields extends StatelessWidget {
  const EmailAndPasswordFields();

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: CustomTextField(
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
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: CustomTextField(
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
