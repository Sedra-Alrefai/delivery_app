import 'package:delivery_app/core/utils/app_colors.dart';
import 'package:delivery_app/features/favorite/favorite_view.dart';
import 'package:delivery_app/features/home/presentation/models/category_model.dart';
import 'package:delivery_app/features/home/presentation/models/store_model.dart';
import 'package:delivery_app/features/home/presentation/views_model/product_data.dart';
import 'package:delivery_app/features/home/presentation/widget/custom_categories_list.dart';
import 'package:delivery_app/features/home/presentation/widget/custom_store_list.dart';
import 'package:delivery_app/features/home/presentation/widget/product_card.dart';
import 'package:delivery_app/features/markets/presentation/views/markets_view.dart';
import 'package:delivery_app/features/profile/presentation/view/profile_view.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int _currentIndex = 0;
  final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        onPageChanged: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        children: [
          buildHomeView(),
          buildMarketView(),
          buildFavoriteView(),
          buildProfileView(),
        ],
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(bottom: 30, right: 16, left: 16),
        child: Container(
          height: 60,
          decoration: BoxDecoration(
            color: AppColors.darkTealBlue,
            borderRadius: const BorderRadius.all(Radius.circular(16)),
            boxShadow: const [
              BoxShadow(
                color: Colors.black12,
                blurRadius: 10,
                offset: Offset(0, -2),
              ),
            ],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              buildBottomBarButton(
                icon: Icons.home,
                index: 0,
              ),
              buildBottomBarButton(
                icon: Icons.store,
                index: 1,
              ),
              buildBottomBarButton(
                icon: Icons.favorite,
                index: 2,
              ),
              buildBottomBarButton(
                icon: Icons.person,
                index: 3,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildBottomBarButton({required IconData icon, required int index}) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _currentIndex = index;
          _pageController.jumpToPage(index);
        });
      },
      child: Container(
        width: 40,
        height: 40,
        decoration: BoxDecoration(
          color: _currentIndex == index
              ? AppColors.tealGreen
              : AppColors.darkTealBlue,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Icon(
          icon,
          color: Colors.white,
        ),
      ),
    );
  }

  Widget buildHomeView() {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Container(
            height: 200,
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 16),
            decoration: const BoxDecoration(
              color: Color(0xFF14212A), // لون داكن
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      color: Colors.white,
                      icon: Icon(Icons.location_on,
                          color: AppColors.goldenOrange),
                      onPressed: () {},
                    ),
                    IconButton(
                      icon: Icon(Icons.shopping_cart,
                          color: AppColors.goldenOrange),
                      onPressed: () {},
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.only(right: 30, left: 30),
                  child: TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      hintText: "Search",
                      prefixIcon: const Icon(Icons.search),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Categories",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 10),
                CustomCategory(categories: categories),
              ],
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Markets:",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 10),
                CustomStoreList(stores: stores),
              ],
            ),
          ),
        ),
        const SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(
              "Recommended for You",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
        ),
        SliverGrid(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 2.0,
            crossAxisSpacing: 2.0,
            childAspectRatio: 0.9,
          ),
          delegate: SliverChildBuilderDelegate(
            (context, index) {
              final product = products[index];
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: ProductCard(
                  name: product.name,
                  store: product.store,
                  image: product.image,
                  rating: product.rating,
                ),
              );
            },
            childCount: products.length,
          ),
        ),
      ],
    );
  }

  Widget buildMarketView() {
    return const MarketsView();
  }

  Widget buildFavoriteView() {
    return const FavoriteView();
  }

  Widget buildProfileView() {
    return const ProfileView();
  }
}



// import 'package:delivery_app/core/utils/app_colors.dart';
// import 'package:delivery_app/core/utils/app_text_Style.dart';
// import 'package:delivery_app/features/favorite/favorite_view.dart';
// import 'package:delivery_app/features/home/presentation/models/category_model.dart';
// import 'package:delivery_app/features/home/presentation/models/store_model.dart';
// import 'package:delivery_app/features/home/presentation/views_model/product_data.dart';
// import 'package:delivery_app/features/home/presentation/widget/custom_bottom_navigator_bar.dart';
// import 'package:delivery_app/features/home/presentation/widget/custom_categories_list.dart';
// import 'package:delivery_app/features/home/presentation/widget/custom_store_list.dart';
// import 'package:delivery_app/features/home/presentation/widget/header_search_cart.dart';
// import 'package:delivery_app/features/home/presentation/widget/product_card.dart';
// import 'package:delivery_app/features/markets/presentation/views/markets_view.dart';
// import 'package:delivery_app/features/profile/presentation/view/profile_view.dart';
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
//               context, MaterialPageRoute(builder: (_) => const ProfileView()));
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
