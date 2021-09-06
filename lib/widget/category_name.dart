import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CategoryName extends StatelessWidget {
  final String categoryName;
  final Function onPress;

  CategoryName({required this.categoryName, required this.onPress});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(categoryName,
            style: TextStyle(
              color: Colors.white,
              fontSize: 12,
            ),
          ),
          TextButton(
            onPressed: () {
              onPress();
            },
            child: Text('More>',
              style: TextStyle(
                color: Colors.white,
                fontSize: 12,
              ),
            ),
          ),
        ],
      ),
    );
  }
}