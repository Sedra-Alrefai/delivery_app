import 'package:delivery_app/core/utils/app_colors.dart';
import 'package:delivery_app/core/widget/custom_button.dart';
import 'package:delivery_app/features/profile/presentation/view/widget/field_edit_prfile_body.dart';
import 'package:delivery_app/features/profile/presentation/view/widget/text_edit_profile_app_textfield.dart';
import 'package:flutter/material.dart';

class EditProfileBody extends StatelessWidget {
  const EditProfileBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
          height: 600,
          width: double.infinity,
          decoration: const BoxDecoration(
              color: Color(0xffFFFFFF),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              )),
        ),
      ),
      const TextEditProfileAppTextfield(
        title: 'First Name ',
        topPadding: 20,
      ),
      const FieldEditPrfileBody(
        title: 'first name',
        topPadding: 60,
      ),
      //120
      const TextEditProfileAppTextfield(title: 'Last Name', topPadding: 120),
      const FieldEditPrfileBody(
        title: 'last Name',
        topPadding: 155,
      ),

      const TextEditProfileAppTextfield(
        title: 'Email',
        topPadding: 220,
      ),

      const FieldEditPrfileBody(
        title: 'change email address',
        topPadding: 255,
      ),

      const TextEditProfileAppTextfield(
        title: 'Phone Number',
        topPadding: 320,
      ),
      const FieldEditPrfileBody(
        title: 'change number',
        topPadding: 355,
      ),

      const TextEditProfileAppTextfield(
        title: 'Password',
        topPadding: 420,
      ),
      const FieldEditPrfileBody(
        title: 'change password',
        topPadding: 455,
      ),

      Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 550),
          child: CustomButton(
            text: 'Save Change',
            color: AppColors.goldenOrange,
          ),
        ),
      )
    ]);
  }
}
