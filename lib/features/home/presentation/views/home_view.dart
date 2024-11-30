// import 'package:delivery_app/core/utils/app_colors.dart';
// import 'package:delivery_app/core/utils/app_text_Style.dart';
// import 'package:delivery_app/features/favorite/favorite_view.dart';
// import 'package:delivery_app/features/home/presentation/models/category_model.dart';
// import 'package:delivery_app/features/home/presentation/models/store_model.dart';
// import 'package:delivery_app/features/home/presentation/views_model/product_data.dart';
// import 'package:delivery_app/features/home/presentation/widget/Custom_bottom_navigator_bar.dart';
// import 'package:delivery_app/features/home/presentation/widget/custom_categories_list.dart';
// import 'package:delivery_app/features/home/presentation/widget/custom_store_list.dart';
// import 'package:delivery_app/features/home/presentation/widget/header_search_cart.dart';
// import 'package:delivery_app/features/home/presentation/widget/product_card.dart';
// import 'package:delivery_app/features/markets/presentation/views/markets_view.dart';
// import 'package:delivery_app/features/profile/presentation/view/profile_view.dart';
// import 'package:delivery_app/features/user/user_view.dart';
// import 'package:flutter/material.dart';

// class HomeView extends StatelessWidget {
//   static const String id = 'Home Page';
//   final int currentIndex;
//   const HomeView({super.key, this.currentIndex = 0});

//   void _navigateTo(BuildContext context, int index) {
//     if (index != currentIndex) {
//       switch (index) {
//         case 0:
//           Navigator.pushReplacement(
//               context, MaterialPageRoute(builder: (_) => const HomeView()));
//           break;
//         case 1:
//           Navigator.pushReplacement(
//               context, MaterialPageRoute(builder: (_) => const MarketsView()));
//           break;
//         case 2:
//           Navigator.pushReplacement(
//               context, MaterialPageRoute(builder: (_) => const FavoriteView()));
//           break;
//         case 3:
//           Navigator.pushReplacement(
//               context, MaterialPageRoute(builder: (_) => const profileView()));
//           break;
//       }
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: AppColors.lightafwait,
//       body: CustomScrollView(
//         slivers: [
//           SliverToBoxAdapter(
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 const HeaderSearchCart(),
//                 const SizedBox(height: 16),
//                 CustomCategory(categories: categories),
//                 const SizedBox(height: 24),
//                 Padding(
//                   padding: const EdgeInsets.symmetric(horizontal: 16.0),
//                   child: Text(
//                     'The best stores of our app!',
//                     style: CustomTextStyle.parkinsans400Style20,
//                   ),
//                 ),
//                 const SizedBox(height: 16),
//                 CustomStoreList(stores: stores),
//                 const SizedBox(height: 24),
//                 Padding(
//                   padding: const EdgeInsets.symmetric(horizontal: 16.0),
//                   child: Text(
//                     'Recommended for you:',
//                     style: CustomTextStyle.parkinsans400Style20,
//                   ),
//                 ),
//                 const SizedBox(height: 16),
//               ],
//             ),
//           ),
//           SliverGrid(
//             gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//               crossAxisCount: 2,
//               mainAxisSpacing: 2.0,
//               crossAxisSpacing: 2.0,
//               childAspectRatio: 0.9,
//             ),
//             delegate: SliverChildBuilderDelegate(
//               (context, index) {
//                 final product = products[index];
//                 return Padding(
//                   padding: const EdgeInsets.symmetric(horizontal: 8.0),
//                   child: ProductCard(
//                     name: product.name,
//                     store: product.store,
//                     image: product.image,
//                     rating: product.rating,
//                   ),
//                 );
//               },
//               childCount: products.length, // عدد المنتجات
//             ),
//           ),
//         ],
//       ),
//       bottomNavigationBar: CustomBottomNavigatorBar(
//         currentIndex: 0,
//         onTap: (index) {
//           _navigateTo(context, index);
//         },
//       ),
//     );
//   }
// }
