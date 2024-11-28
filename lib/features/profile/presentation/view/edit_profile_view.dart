import 'package:delivery_app/core/function/navigation.dart';
import 'package:delivery_app/features/profile/presentation/view/widget/app_bar_container_edit_profile.dart';
import 'package:delivery_app/features/profile/presentation/view/widget/edit_profile_body.dart';
import 'package:delivery_app/features/profile/presentation/view/widget/image_edit_profile.dart';
import 'package:flutter/material.dart';

class EditProfileView extends StatelessWidget {
  const EditProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xffF5F5F5),
        body: SingleChildScrollView(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          AppBarContainerEditProfile(
            title: 'Edit Profile',
            onPressed: () {
              CustomNavigationReplacement(context, '/profileView');
            },
          ),
          const SizedBox(
            height: 20,
          ),
          const ImageProfileEdit(),
          const SizedBox(
            height: 20,
          ),
          const EditProfileBody(),
        ])));
  }
}
