import 'package:delivery_app/features/auth/presentation/widget/bottom_container_sign_in.dart';
import 'package:delivery_app/features/auth/presentation/widget/email_and_password_fields.dart';
import 'package:delivery_app/features/auth/presentation/widget/header_widget.dart';

import 'package:flutter/material.dart';

class SignInView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 500,
      child: Scaffold(
        backgroundColor: Color(0xff1A2E35),
        body: Column(
          children: [
            SizedBox(height: 150),
            HeaderWidget(),
            SizedBox(height: 100),
            EmailAndPasswordFields(),
            SizedBox(height: 65),
            Expanded(
              child: BottomContainer(),
            ),
          ],
        ),
      ),
    );
  }
}
