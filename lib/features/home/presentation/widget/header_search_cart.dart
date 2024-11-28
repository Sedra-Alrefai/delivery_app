import 'package:delivery_app/core/widget/custom_text_field.dart';
import 'package:flutter/material.dart';

class HeaderSearchCart extends StatelessWidget {
  const HeaderSearchCart({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        children: [
          const Expanded(
            child: CustomTextField(
              hintText: 'Search for stores or products',
              icon: Icon(Icons.search),
              color: Colors.white,
              textColor: Colors.grey,
            ),
          ),
          const SizedBox(width: 6),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.add_shopping_cart, color: Color(0xFFFC823C)),
          ),
        ],
      ),
    );
  }
}
