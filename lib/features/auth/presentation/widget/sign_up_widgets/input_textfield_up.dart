import 'package:delivery_app/features/auth/presentation/widget/Custom_text_field_2.dart';
import 'package:flutter/material.dart';

class InputFieldsSection extends StatelessWidget {
  const InputFieldsSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomTextField2(
          hintText: "First Name",
          icon: Icon(Icons.person, color: Colors.grey),
          color: Colors.white,
          textColor: Colors.black,
          label: "First Name",
        ),
        CustomTextField2(
          hintText: "Last Name",
          icon: Icon(Icons.person, color: Colors.grey),
          color: Colors.white,
          textColor: Colors.black,
          label: "Last Name",
        ),
        SizedBox(height: 10),
        CustomTextField2(
          hintText: "Email Address",
          icon: Icon(Icons.email, color: Colors.grey),
          color: Colors.white,
          textColor: Colors.black,
          label: "Email",
        ),
        SizedBox(height: 10),
        CustomTextField2(
          hintText: "Password",
          icon: Icon(Icons.lock, color: Colors.grey),
          color: Colors.white,
          textColor: Colors.black,
          label: "Password",
        ),
        SizedBox(height: 10),
        CustomTextField2(
          hintText: "Retype Password",
          icon: Icon(Icons.lock, color: Colors.grey),
          color: Colors.white,
          textColor: Colors.black,
          label: "Confirm Password",
        ),
      ],
    );
  }
}