import 'package:delivery_app/core/utils/app_colors.dart';
import 'package:delivery_app/core/utils/app_text_Style.dart';
import 'package:flutter/material.dart';

class HeaderSection extends StatelessWidget {
  const HeaderSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 200,
          decoration: BoxDecoration(
            color: AppColors.darkTealBlue,
            borderRadius: const BorderRadius.only(
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
              Text("Let's",
                  style: CustomTextStyle.parkinsans500Style24
                      .copyWith(color: AppColors.afwait, fontSize: 25)),
              Text("Create Your",
                  style: CustomTextStyle.parkinsans500Style24
                      .copyWith(color: AppColors.afwait, fontSize: 25)),
              Text("Account",
                  style: CustomTextStyle.parkinsans500Style24
                      .copyWith(color: AppColors.afwait, fontSize: 25)),
            ],
          ),
        ),
      ],
    );
  }
}