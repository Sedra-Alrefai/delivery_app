import 'package:delivery_app/core/utils/app_colors.dart';
import 'package:delivery_app/core/utils/app_text_Style.dart';
import 'package:flutter/widgets.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget();

  @override
  Widget build(BuildContext context) {
    return Center(
      child:
          //Image.asset('assets/images/delivery man logo.jpeg.png'),
          Text(
        'Delivery Man',
        style: CustomTextStyle.parkinsans600Style28
            .copyWith(color: AppColors.tealGreen, fontSize: 40),
      ),
    );
  }
}
