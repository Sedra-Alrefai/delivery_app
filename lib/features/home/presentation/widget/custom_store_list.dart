import 'package:delivery_app/features/home/presentation/widget/store_card.dart';
import 'package:flutter/material.dart';

class CustomStoreList extends StatelessWidget {
  final List<Map<String, dynamic>> stores;

  const CustomStoreList({super.key, required this.stores});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250, // تعديل الطول ليناسب البطاقات
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: stores.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(right: 16),
            child: StoreCard(
              name: stores[index]['name']!,
              imageUrl: stores[index]['image']!,
              location: stores[index]['location']!,
              rating: stores[index]['rating']!,
            ),
          );
        },
      ),
    );
  }
}
