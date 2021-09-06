import 'package:flutter/material.dart';

class InputPhoneNumber extends StatelessWidget {
  final Size size;
  final keyboardSize;
  final TextEditingController textController;
  final String hint;
  final Function onPressed;

  InputPhoneNumber({
    required this.size,
    required this.keyboardSize,
    required this.textController,
    required this.hint,
    required this.onPressed
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size.height - keyboardSize,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.only(top: 10, left: 10, right: 60),
            width: size.width * .85,
            height: size.height * 0.15,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(150),
                bottomRight: Radius.circular(150),
              ),
              color: Colors.grey[900],
            ),
            child: Column(
              children: [
                Container(
                  height: size.height * 0.07,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(Icons.phone_android,
                        color: Colors.amber,
                        size: 20,
                      ),
                      SizedBox(width: 10),
                      Expanded(
                        child: TextField(
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
                ),
              ],
            ),
          ),
          SizedBox(height: 15),
          Container(
            width: size.width * 0.22,
            height: size.height * 0.055,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.amber,
            ),
            child: TextButton(
              onPressed: () {
                onPressed();
              },
              child: Text('verify',
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}