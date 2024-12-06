import 'package:flutter/widgets.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Image.asset(
        'assets/image/delivery man logo.jpeg.png',
        width: 100,
        height: 100,
      ),
      //     Text(
      //   'Delivery Man',
      //   style: CustomTextStyle.parkinsans600Style28
      //       .copyWith(color: AppColors.tealGreen, fontSize: 40),
      // ),
    );
  }
}
