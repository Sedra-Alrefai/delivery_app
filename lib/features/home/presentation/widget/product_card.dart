import 'package:delivery_app/core/utils/app_colors.dart';
import 'package:delivery_app/core/utils/app_text_Style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class ProductCard extends StatelessWidget {
  final String name;
  final String store;
  final String image;
  final double rating;

  const ProductCard({
    Key? key,
    required this.name,
    required this.store,
    required this.image,
    required this.rating,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      elevation: 3,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // الصورة
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.asset(
                image,
                height: 120, // ارتفاع الصورة
                width: double.infinity, // عرض الصورة حسب الكارد
                fit: BoxFit.cover, // لضمان ملاءمة الصورة
              ),
            ),
            const SizedBox(height: 8),
            // النصوص
            Text(
              name,
              style: CustomTextStyle.Parkinsans300Style16,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            const SizedBox(height: 2),
            Text(
              store,
              style: CustomTextStyle.Parkinsans400StyleG15,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            const SizedBox(height: 2),
            RatingBarIndicator(
              rating: rating,
              itemBuilder: (context, _) => Icon(
                Icons.star,
                color: AppColors.amberStars,
              ),
              itemCount: 5,
              itemSize: 16.0,
              direction: Axis.horizontal,
            ),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.center,
            //   children: [
            //     const Icon(Icons.star, color: Colors.amber, size: 12),
            //     const SizedBox(width: 4),
            //     Text(
            //       rating.toString(),
            //       style: const TextStyle(fontSize: 12),
            //     ),
            //   ],
            // ),
          ],
        ),
      ),
    );
  }
}
