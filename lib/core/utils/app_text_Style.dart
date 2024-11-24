import 'package:delivery_app/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

abstract class CustomTextStyle {
  static final pacifico400Style64 = TextStyle(
    fontFamily: 'Pacifico',
    fontSize: 64,
    fontWeight: FontWeight.w400,
    color: AppColors.deepBrown,
  );
  static final pacifico400Style22 = TextStyle(
    fontFamily: 'Pacifico',
    fontSize: 22,
    fontWeight: FontWeight.w400,
    color: AppColors.deepBrown,
  );

  static const poppins500Style24 = TextStyle(
    fontFamily: 'Poppins Medium',
    fontSize: 24,
    fontWeight: FontWeight.w500,
    color: Colors.black,
  );
  static final poppins300Style16 = TextStyle(
    fontFamily: 'Poppins Medium',
    fontSize: 16,
    fontWeight: FontWeight.w300,
    color: AppColors.black,
  );
  static const poppins400Style16 = TextStyle(
    fontFamily: 'Poppins Medium',
    fontSize: 16,
    fontWeight: FontWeight.w400,
    color: Colors.black,
  );
  static const poppins600Style28 = TextStyle(
    fontFamily: 'Poppins Medium',
    fontSize: 28,
    fontWeight: FontWeight.w600,
    color: Colors.black,
  );
  static final poppins500Style12 = TextStyle(
    fontFamily: 'Poppins Medium',
    fontSize: 12,
    fontWeight: FontWeight.w500,
    color: AppColors.grey,
  );
  static final poppins400Style12 = TextStyle(
    fontFamily: 'Poppins Medium',
    fontSize: 12,
    fontWeight: FontWeight.w400,
    color: AppColors.deepGrey,
  );
}
