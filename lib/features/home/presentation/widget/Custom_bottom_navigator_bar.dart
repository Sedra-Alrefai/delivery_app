import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomBottomNavBar extends StatelessWidget {
  final int currentIndex;

  const CustomBottomNavBar({
    Key? key,
    required this.currentIndex,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: currentIndex,
      selectedItemColor: const Color(0xFFFC823C),
      unselectedItemColor: Colors.grey,
      backgroundColor: Colors.white,
      onTap: (index) {
        // التنقل بين الصفحات حسب الزر المضغوط
        switch (index) {
          case 0:
            // التنقل إلى الصفحة الرئيسية
            context.go('/HomeView');
            break;
          case 1:
            // التنقل إلى صفحة الأسواق
            context.go('/marketsView');
            break;
          case 2:
            // التنقل إلى صفحة المفضلة
            context.go('/FavoriteView');
            break;
          case 3:
            // التنقل إلى صفحة المستخدم
            context.go('/UserView');
            break;
        }
      },
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.store),
          label: 'Markets',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.favorite),
          label: 'Favorites',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: 'User',
        ),
      ],
    );
  }
}
