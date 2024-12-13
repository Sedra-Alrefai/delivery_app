import 'package:delivery_app/core/utils/app_colors.dart';
import 'package:delivery_app/core/widget/custom_button.dart';
import 'package:delivery_app/features/auth/presentation/view_model/cubits/cubit/user_cubit.dart';
import 'package:delivery_app/features/profile/presentation/view/widget/field_edit_prfile_body.dart';
import 'package:delivery_app/features/profile/presentation/view/widget/text_edit_profile_app_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class EditProfileBody extends StatelessWidget {
  final TextEditingController firstNameController = TextEditingController();
  final TextEditingController lastNameController = TextEditingController();
  final TextEditingController phoneNumberController = TextEditingController();
  final TextEditingController locationController = TextEditingController();

  final String email;
  final String role;

  EditProfileBody({
    required this.email,
    required this.role,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<UserCubit, UserState>(
      listener: (context, state) {
        if (state is UpdateUserSuccess) {
          context.read<UserCubit>().getUserProfile();
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text("Profile updated successfully")),
          );
        } else if (state is UpdateUserFailure) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text("Failed to update profile")),
          );
        }
      },
      builder: (context, state) {
        return Stack(
          children: [
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
                  ),
                ),
              ),
            ),
            const TextEditProfileAppTextfield(
              title: 'First Name',
              topPadding: 20,
            ),
            FieldEditPrfileBody(
              title: 'First Name',
              controller: firstNameController,
              topPadding: 60,
            ),
            const TextEditProfileAppTextfield(
                title: 'Last Name', topPadding: 120),
            FieldEditPrfileBody(
              title: 'Last Name',
              controller: lastNameController,
              topPadding: 155,
            ),
            const TextEditProfileAppTextfield(
              title: 'Phone Number',
              topPadding: 220,
            ),
            FieldEditPrfileBody(
              title: 'Phone Number',
              controller: phoneNumberController,
              topPadding: 255,
            ),
            const TextEditProfileAppTextfield(
              title: 'Location',
              topPadding: 320,
            ),
            FieldEditPrfileBody(
              title: 'Location',
              controller: locationController,
              topPadding: 355,
            ),
            const SizedBox(height: 20),
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 500),
                child: CustomButton(
                  text: 'Save Changes',
                  color: AppColors.goldenOrange,
                  onTap: () {
                    Map<String, dynamic> updatedData = {};

                    // القيم المعدلة
                    if (firstNameController.text.isNotEmpty) {
                      updatedData['name'] = firstNameController.text;
                    }

                    if (lastNameController.text.isNotEmpty) {
                      updatedData['lastName'] = lastNameController.text;
                    }

                    if (phoneNumberController.text.isNotEmpty) {
                      updatedData['phoneNumber'] = phoneNumberController.text;
                    }

                    if (locationController.text.isNotEmpty) {
                      updatedData['location'] = locationController.text;
                    }

                    updatedData['email'] = email;
                    updatedData['role'] = role;
                    updatedData['img'] = '';

                    context
                        .read<UserCubit>()
                        .updateUserProfile(updatedData: updatedData);
                  },
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
