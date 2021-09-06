import 'package:flutter/material.dart';

class MyTextFiled extends StatelessWidget {

  final Size size;
  final String hint;
  final bool obSecure;
  final IconData iconData;
  final TextEditingController textController;

  MyTextFiled({
    required this.size,
    required this.hint,
    required this.obSecure,
    required this.iconData,
    required this.textController,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height * 0.07,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(iconData, color: Colors.amber, size: 20),
          SizedBox(width: 10),
          Expanded(
            child: TextField(
              obscureText: obSecure,
              controller: textController,
              style: TextStyle(color: Colors.white, fontSize: 14),
              decoration: InputDecoration(
                contentPadding: EdgeInsets.only(bottom: 10),
                fillColor: Colors.amber,
                enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.amber)
                ),
                hintText: hint,
                hintStyle: TextStyle(
                  color: Colors.grey,
                  fontSize: 12,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}