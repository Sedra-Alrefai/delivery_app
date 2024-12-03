import 'package:delivery_app/features/home/presentation/models/category_model.dart';
import 'package:flutter/material.dart';

class MarketsView extends StatelessWidget {
  const MarketsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.menu, color: Colors.black),
          onPressed: () {},
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/image/delivery man logo.jpeg.png',
              height: 40,
            ),
          ],
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.favorite, color: Colors.black),
            onPressed: () {},
          ),
        ],
      ),
      body: Row(
        children: [
          Container(
            width: 100,
            color: Colors.teal[100],
            child: Scrollbar(
              thumbVisibility: true,
              child: ListView.builder(
                itemCount: categories.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: const Icon(Icons.image, color: Colors.grey),
                        ),
                        const SizedBox(height: 5),
                        Text(
                          categories[index],
                          style: const TextStyle(fontSize: 12),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.grey[200],
                      hintText: "Search",
                      prefixIcon: const Icon(Icons.search, color: Colors.grey),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    "Markets",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 20),
                  Expanded(
                    child: ListView.builder(
                      itemCount: 3,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8.0),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.grey[200],
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: ListTile(
                              leading: Container(
                                width: 50,
                                height: 50,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child:
                                    const Icon(Icons.image, color: Colors.grey),
                              ),
                              title: const Text(
                                "Cupcakes",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              subtitle: const Text("Taste the magic!"),
                              trailing: Container(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 8, vertical: 4),
                                decoration: BoxDecoration(
                                  color: Colors.orange,
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                child: const Text(
                                  "New",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
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

