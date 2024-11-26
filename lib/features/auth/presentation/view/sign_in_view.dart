import 'package:delivery_app/features/auth/presentation/widgets/bottom_container.dart';
import 'package:delivery_app/features/auth/presentation/widgets/email_and_password_fields.dart';
import 'package:delivery_app/features/auth/presentation/widgets/header_widget.dart';
import 'package:flutter/material.dart';

class SignInView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xff1A2E35),
      body: Column(
        children: [
          SizedBox(height: 150),
          HeaderWidget(),
          SizedBox(height: 100),
          EmailAndPasswordFields(),
          SizedBox(height: 65),
          // جعل الـ Container يأخذ باقي الشاشة
          Expanded(
            child: BottomContainer(),
          ),
        ],
      ),
    );
  }
}
