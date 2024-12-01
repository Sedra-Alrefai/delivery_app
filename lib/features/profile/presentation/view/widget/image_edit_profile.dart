import 'package:delivery_app/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

class ImageProfileEdit extends StatefulWidget {
  const ImageProfileEdit({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _ImageProfileEditState createState() => _ImageProfileEditState();
}

class _ImageProfileEditState extends State<ImageProfileEdit> {
  String currentImage = 'assets/image/kk.png';

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        children: [
          Container(
            width: 160,
            height: 160,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: Colors.grey,
                width: 1,
              ),
              image: DecorationImage(
                image: AssetImage(currentImage),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            bottom: 10,
            right: 10,
            child: GestureDetector(
              onTap: () {
                setState(() {
                  currentImage = 'assets/image/new_image.png';
                });
              },
              child: Container(
                decoration: BoxDecoration(
                  color: AppColors.goldenOrange,
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      blurRadius: 5,
                      spreadRadius: 2,
                    ),
                  ],
                ),
                padding: const EdgeInsets.all(5),
                child: Icon(
                  Icons.edit,
                  color: AppColors.afwait,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
