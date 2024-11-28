import 'package:delivery_app/core/widget/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SearchButton extends StatefulWidget {
  final Function(String)? onSearch;

  const SearchButton({Key? key, this.onSearch}) : super(key: key);

  @override
  _SearchButtonState createState() => _SearchButtonState();
}

class _SearchButtonState extends State<SearchButton> {
  bool _isSearchVisible = false;
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            IconButton(
              icon: Icon(_isSearchVisible ? Icons.close : Icons.search),
              onPressed: () {
                setState(() {
                  _isSearchVisible = !_isSearchVisible;
                  if (!_isSearchVisible) {
                    _controller.clear(); // إعادة تعيين النص عند الإغلاق
                  }
                });
              },
            ),
            if (_isSearchVisible)
              Expanded(
                child: CustomTextField(
                  hintText: "search for stories or products",
                  icon: const Icon(Icons.search, color: Colors.grey),
                  color: Colors.white,
                  textColor: Colors.black,
                  controller: _controller, // تمرير الـ controller
                ),
              ),
          ],
        ),
        if (_isSearchVisible)
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: ElevatedButton(
              onPressed: () {
                widget.onSearch?.call(_controller.text); // تمرير النص المدخل
              },
              child: const Text("Search"),
            ),
          ),
      ],
    );
  }
}
