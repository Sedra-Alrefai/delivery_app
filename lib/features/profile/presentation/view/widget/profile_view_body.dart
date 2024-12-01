import 'package:delivery_app/features/profile/presentation/view/widget/gesturdetec_profile_view_body.dart';
import 'package:flutter/material.dart';

class ProfileViewBody extends StatelessWidget {
  const ProfileViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 10),
        GestureDetecProfileViewBody(
            iconc: const Icon(Icons.notifications),
            title: "Notification",
            subTitle: 'Recent Message , tone',
            onTap: () {}),
        GestureDetecProfileViewBody(
            iconc: const Icon(Icons.location_on),
            title: "Saved Addresses",
            subTitle: 'Locations entered ',
            onTap: () {}),
        GestureDetecProfileViewBody(
            iconc: const Icon(Icons.list_alt),
            title: "Orders",
            subTitle: 'All order,  Pre_oreder  ',
            onTap: () {}),
        GestureDetecProfileViewBody(
            iconc: const Icon(Icons.language),
            title: "Language",
            subTitle: 'English (device language)',
            onTap: () {}),
        GestureDetecProfileViewBody(
            iconc: const Icon(Icons.payment),
            title: "Billing Payment",
            subTitle: 'Payment method  ',
            onTap: () {}),
        GestureDetecProfileViewBody(
            iconc: const Icon(Icons.logout),
            title: "Log Out",
            subTitle: 'log out of the account ',
            onTap: () {})
      ],
    );
  }
}
