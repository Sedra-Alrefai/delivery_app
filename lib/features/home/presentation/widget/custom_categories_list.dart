import 'package:delivery_app/core/utils/app_colors.dart';
import 'package:delivery_app/core/utils/app_text_Style.dart';
import 'package:flutter/material.dart';

class CustomCategory extends StatelessWidget {
  final List<String> categories;

  const CustomCategory({
    super.key,
    required this.categories,
  });

  @override
  Widget build(BuildContext context) {
    const double height = 30.0;
    Color color = AppColors.tealGreen;
    return SizedBox(
      height: height + 16,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(right: 7),
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 8,
                  ),
                  decoration: BoxDecoration(
                    color: color,
                    borderRadius: BorderRadius.circular(24),
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    categories[index],
                    style: CustomTextStyle.parkinsans400StyleW14,
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
