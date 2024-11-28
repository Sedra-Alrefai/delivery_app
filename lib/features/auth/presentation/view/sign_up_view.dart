import 'package:delivery_app/core/function/navigation.dart';
import 'package:delivery_app/core/utils/app_colors.dart';
import 'package:delivery_app/core/utils/app_text_Style.dart';
import 'package:delivery_app/core/widget/Custom_button.dart';
import 'package:delivery_app/features/auth/presentation/widget/Custom_text_field_2.dart';

import 'package:flutter/material.dart';

class SignUpView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: 200,
                  decoration: BoxDecoration(
                    color: AppColors.darkTealBlue,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(50),
                      bottomRight: Radius.circular(50),
                    ),
                  ),
                ),
                Positioned(
                  top: 50,
                  left: 20,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Let's",
                        style: CustomTextStyle.Parkinsans500Style24.copyWith(
                            color: AppColors.afwait, fontSize: 25),
                      ),
                      Text(
                        "Create Your",
                        style: CustomTextStyle.Parkinsans500Style24.copyWith(
                            color: AppColors.afwait, fontSize: 25),
                      ),
                      Text(
                        "Account",
                        style: CustomTextStyle.Parkinsans500Style24.copyWith(
                            color: AppColors.afwait, fontSize: 25),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const Padding(
              padding: const EdgeInsets.all(35.0),
              child: Column(
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
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 35.0, right: 35),
              child: Column(
                children: [
                  Row(
                    children: [
                      Checkbox(
                        value: true,
                        onChanged: (value) {},
                        activeColor: AppColors.tealGreen,
                      ),
                      Text("I agree to the Terms & Privacy",
                          style: CustomTextStyle.Parkinsans300Style16.copyWith(
                              fontSize: 13)),
                    ],
                  ),
                  SizedBox(height: 80),
                  CustomButton(
                      text: 'Sin Up',
                      color: AppColors.darkTealBlue,
                      onTap: () {
                        CustomNavigationReplacement(context, "/profileView");
                      })
                ],
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Have an account? ",
                    style: CustomTextStyle.Parkinsans300Style16.copyWith(
                        color: Colors.grey,
                        fontSize: 15,
                        fontWeight: FontWeight.bold)),
                GestureDetector(
                  onTap: () {
                    CustomNavigationReplacement(context, '/SignInView');
                  },
                  child: Text("SIGN IN ",
                      style: CustomTextStyle.Parkinsans300Style16.copyWith(
                          fontSize: 15, fontWeight: FontWeight.bold)),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
