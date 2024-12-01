import 'package:delivery_app/core/function/navigation.dart';
import 'package:delivery_app/core/utils/app_colors.dart';
import 'package:delivery_app/core/utils/app_text_Style.dart';
import 'package:flutter/material.dart';

class IdProfileUser extends StatelessWidget {
  const IdProfileUser(
      {super.key, required this.userName, required this.subTitle});
  final String userName;
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(16.0),
        child: Container(
            padding: const EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.2),
                  spreadRadius: 2,
                  blurRadius: 5,
                  offset: const Offset(0, 3),
                ),
              ],
            ),
            child: Row(
              children: [
                const CircleAvatar(
                  radius: 35,
                  backgroundImage: AssetImage(
                    'assets/image/kk.png',
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(userName,
                          style: CustomTextStyle.parkinsans500Style24
                              .copyWith(fontSize: 19)),
                      const SizedBox(height: 4),
                      Text(subTitle,
                          style: CustomTextStyle.parkinsans300Style16
                              .copyWith(color: Colors.grey, fontSize: 14)),
                    ],
                  ),
                ),
                TextButton.icon(
                  onPressed: () {
                    CustomNavigationReplacement(context, '/EditProfileView');
                  },
                  icon: Icon(Icons.edit, color: AppColors.goldenOrange),
                  label: Text(
                    'Edit',
                    style: TextStyle(color: AppColors.goldenOrange),
                  ),
                ),
              ],
            )));
  }
}
