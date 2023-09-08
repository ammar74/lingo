import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  Category(
      {required this.categoryName, required this.categoryColor, this.onTap});

  String? categoryName;
  Color? categoryColor;
  Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        alignment: Alignment.centerLeft,
        padding: const EdgeInsets.only(left: 30),
        height: 100,
        color: categoryColor,
        child: Text(
          categoryName!,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}
