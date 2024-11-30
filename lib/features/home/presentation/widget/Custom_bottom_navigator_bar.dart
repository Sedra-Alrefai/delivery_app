// import 'package:delivery_app/core/utils/app_colors.dart';
// import 'package:flutter/material.dart';

// class CustomBottomNavigatorBar extends StatelessWidget {
//   final int currentIndex;
//   final Function(int) onTap;

//   const CustomBottomNavigatorBar({
//     Key? key,
//     required this.currentIndex,
//     required this.onTap,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 60,
//       color: Colors.white,
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceAround,
//         children: [
//           _buildNavItem(
//             icon: Icons.home,
//             index: 0,
//             label: 'Home',
//           ),
//           _buildNavItem(
//             icon: Icons.store,
//             index: 1,
//             label: 'Store',
//           ),
//           _buildNavItem(
//             icon: Icons.favorite,
//             index: 2,
//             label: 'Favorite',
//           ),
//           _buildNavItem(
//             icon: Icons.person,
//             index: 3,
//             label: 'User',
//           ),
//         ],
//       ),
//     );
//   }

//   Widget _buildNavItem({
//     required IconData icon,
//     required int index,
//     required String label,
//   }) {
//     final isActive = index == currentIndex;
//     return GestureDetector(
//       onTap: () => onTap(index),
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Icon(
//             icon,
//             color: isActive ? AppColors.goldenOrange : AppColors.grey,
//           ),
//           Text(
//             label,
//             style: TextStyle(
//               fontSize: 12,
//               color: isActive ? AppColors.goldenOrange : AppColors.grey,
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }



// // import 'package:flutter/material.dart';
// // import 'package:go_router/go_router.dart';

// // class CustomBottomNavBar extends StatelessWidget {
// //   final int currentIndex;

// //   const CustomBottomNavBar({
// //     Key? key,
// //     required this.currentIndex,
// //   }) : super(key: key);

// //   @override
// //   Widget build(BuildContext context) {
// //     return BottomNavigationBar(
// //       currentIndex: currentIndex,
// //       selectedItemColor: const Color(0xFFFC823C),
// //       unselectedItemColor: Colors.grey,
// //       backgroundColor: Colors.white,
// //       onTap: (index) {
// //         // التنقل بين الصفحات حسب الزر المضغوط
// //         switch (index) {
// //           case 0:
// //             // التنقل إلى الصفحة الرئيسية
// //             context.go('/HomeView');
// //             break;
// //           case 1:
// //             // التنقل إلى صفحة الأسواق
// //             context.go('/marketsView');
// //             break;
// //           case 2:
// //             // التنقل إلى صفحة المفضلة
// //             context.go('/FavoriteView');
// //             break;
// //           case 3:
// //             // التنقل إلى صفحة المستخدم
// //             context.go('/UserView');
// //             break;
// //         }
// //       },
// //       items: const [
// //         BottomNavigationBarItem(
// //           icon: Icon(Icons.home),
// //           label: 'Home',
// //         ),
// //         BottomNavigationBarItem(
// //           icon: Icon(Icons.store),
// //           label: 'Markets',
// //         ),
// //         BottomNavigationBarItem(
// //           icon: Icon(Icons.favorite),
// //           label: 'Favorites',
// //         ),
// //         BottomNavigationBarItem(
// //           icon: Icon(Icons.person),
// //           label: 'User',
// //         ),
// //       ],
// //     );
// //   }
// // }
