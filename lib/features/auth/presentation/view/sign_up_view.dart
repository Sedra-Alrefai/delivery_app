import 'package:delivery_app/features/auth/presentation/widget/sign_up_widgets/header_section_up.dart';
import 'package:delivery_app/features/auth/presentation/widget/sign_up_widgets/input_textfield_up.dart';
import 'package:delivery_app/features/auth/presentation/widget/sign_up_widgets/sign_in_redirct.dart';
import 'package:delivery_app/features/auth/presentation/widget/sign_up_widgets/sign_up_button.dart';
import 'package:delivery_app/features/auth/presentation/widget/sign_up_widgets/terms_privacy_row.dart';
import 'package:flutter/material.dart';

class SignUpView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            HeaderSection(),
            Padding(
              padding: EdgeInsets.all(35.0),
              child: InputFieldsSection(),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 35.0),
              child: Column(
                children: [
                  TermsAndPrivacyRow(),
                  SizedBox(height: 80),
                  SignUpButton(),
                ],
              ),
            ),
            SizedBox(height: 20),
            SignInRedirect(),
          ],
        ),
      ),
    );
  }
}
