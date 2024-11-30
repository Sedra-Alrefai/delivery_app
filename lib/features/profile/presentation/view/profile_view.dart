import 'package:delivery_app/core/function/navigation.dart';
import 'package:delivery_app/core/utils/app_text_Style.dart';
import 'package:delivery_app/features/profile/presentation/view/widget/app_bar_container_edit_profile.dart';
import 'package:delivery_app/features/profile/presentation/view/widget/id_profile_user.dart';
import 'package:delivery_app/features/profile/presentation/view/widget/profile_view_body.dart';
import 'package:flutter/material.dart';

class profileView extends StatelessWidget {
  const profileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppBarContainerEditProfile(
              title: 'Profile User',
              onPressed: () {
                CustomNavigationReplacement(context, '/SignUpView');
              },
            ),
            const IdProfileUser(
              userName: 'User Name',
              subTitle: 'userName@gmail.com',
            ),
            const Divider(
              color: Colors.grey,
              thickness: 0.3,
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16.0),
              child: Text(
                "General",
                style: CustomTextStyle.parkinsans400Style12
                    .copyWith(fontSize: 15, fontWeight: FontWeight.bold),
              ),
            ),
            ProfileViewBody(),
          ],
        ),
      ),
    );
  }
}
