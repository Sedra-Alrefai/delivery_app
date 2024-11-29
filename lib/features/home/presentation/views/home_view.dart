import 'package:delivery_app/core/utils/app_colors.dart';
import 'package:delivery_app/features/favorite/favorite_view.dart';
import 'package:delivery_app/features/home/presentation/models/category_model.dart';
import 'package:delivery_app/features/home/presentation/models/store_model.dart';
import 'package:delivery_app/features/home/presentation/views_model/product_data.dart';
import 'package:delivery_app/features/home/presentation/widget/Custom_bottom_navigator_bar.dart';
import 'package:delivery_app/features/home/presentation/widget/custom_categories_list.dart';
import 'package:delivery_app/features/home/presentation/widget/custom_store_list.dart';
import 'package:delivery_app/features/home/presentation/widget/header_search_cart.dart';
import 'package:delivery_app/features/home/presentation/widget/product_card.dart';
import 'package:delivery_app/features/markets/markets_view.dart';
import 'package:delivery_app/features/user/user_view.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  static const String id = 'Home Page';
  final int currentIndex;
  const HomeView({super.key, this.currentIndex = 0});

  void _navigateTo(BuildContext context, int index) {
    if (index != currentIndex) {
      switch (index) {
        case 0:
          Navigator.pushReplacement(
              context, MaterialPageRoute(builder: (_) => const HomeView()));
          break;
        case 1:
          Navigator.pushReplacement(
              context, MaterialPageRoute(builder: (_) => const MarketsView()));
          break;
        case 2:
          Navigator.pushReplacement(
              context, MaterialPageRoute(builder: (_) => const FavoriteView()));
          break;
        case 3:
          Navigator.pushReplacement(
              context, MaterialPageRoute(builder: (_) => const UserView()));
          break;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.lightafwait,
      body: CustomScrollView(
        slivers: [
          // الجزء العلوي (شريط البحث والفئات والمتاجر)
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                HeaderSearchCart(),
                const SizedBox(height: 16),
                CustomCategory(categories: categories),
                const SizedBox(height: 24),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Text(
                    'The best stores of our app!',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: AppColors.deepTeal),
                  ),
                ),
                const SizedBox(height: 16),
                CustomStoreList(stores: stores),
                const SizedBox(height: 24),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Text(
                    'Recommended for you:',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: AppColors.deepTeal),
                  ),
                ),
                const SizedBox(height: 16),
              ],
            ),
          ),

          // قائمة المنتجات الديناميكية
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                // هنا تحتاج إلى تمرير قائمة المنتجات
                final product =
                    products[index]; // استبدل `products` بقائمة منتجاتك.
                return Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 8.0, horizontal: 16.0),
                  child: ProductCard(
                    name: product.name,
                    store: product.store,
                    image: product.image,
                    rating: product.rating,
                  ),
                );
              },
              childCount: products.length, // استبدل بقائمة عدد المنتجات.
            ),
          ),
        ],
      ),
      bottomNavigationBar: CustomBottomNavigatorBar(
        currentIndex: 0,
        onTap: (index) {
          _navigateTo(context, index);
        },
      ),
    );
  }
}
