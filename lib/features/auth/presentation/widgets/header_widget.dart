import 'package:flutter/widgets.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget();

  @override
  Widget build(BuildContext context) {
    return const Center(
      child:
          //Image.asset('assets/images/delivery man logo.jpeg.png'),
          Text(
        'Delivery Man',
        style: TextStyle(
          color: Color(0xff1AC0B2),
          fontFamily: 'ParKinsans',
          fontSize: 40,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
//_EmailAndPasswordFields
//_BottomContainer
