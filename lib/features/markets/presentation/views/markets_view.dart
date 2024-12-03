import 'package:flutter/material.dart';

class MarketsView extends StatelessWidget {
  const MarketsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text('markets'),
    );
  }
}









// import 'package:delivery_app/features/favorite/favorite_view.dart';
// import 'package:delivery_app/features/home/presentation/views/home_view.dart';
// import 'package:delivery_app/features/home/presentation/widget/custom_bottom_navigator_bar.dart';
// import 'package:delivery_app/features/profile/presentation/view/profile_view.dart';
// import 'package:flutter/material.dart';

// class MarketsView extends StatelessWidget {
//   final int currentIndex;
//   const MarketsView({super.key, this.currentIndex = 1});

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
//       appBar: AppBar(
//         title: const Text('All'),
//       ),
//       body: const Text(' Markets View'),
//       bottomNavigationBar: CustomBottomNavigatorBar(
//         currentIndex: 1,
//         onTap: (index) {
//           _navigateTo(context, index);
//         },
//       ),
//     );
//   }
// }
