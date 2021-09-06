import 'package:flutter/material.dart';
import 'package:pinput/pin_put/pin_put.dart';

class InputSMSPin extends StatelessWidget {
  final TextEditingController pinPutController;
  final Size size;
  final Function onBackPress;
  final Function onCheckPress;

  InputSMSPin({
    required this.pinPutController,
    required this.size,
    required this.onBackPress,
    required this.onCheckPress,
  });

  BoxDecoration get _pinPutDecoration {
    return BoxDecoration(
      border: Border.all(color: Colors.blue, width: 2),
      borderRadius: BorderRadius.circular(15.0),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          PinPut(
            fieldsCount: 4,
            obscureText: '*',
            fieldsAlignment: MainAxisAlignment.center,
            eachFieldMargin: EdgeInsets.symmetric(horizontal: 10),
            controller: pinPutController,
            textStyle: TextStyle(color: Colors.white, fontSize: 25),
            selectedFieldDecoration: _pinPutDecoration,
            eachFieldConstraints: BoxConstraints.expand(
              width: size.width * 0.15,
              height: size.height * 0.1,
            ),
            submittedFieldDecoration: _pinPutDecoration.copyWith(
              borderRadius: BorderRadius.circular(20.0),
            ),
            followingFieldDecoration: _pinPutDecoration.copyWith(
              borderRadius: BorderRadius.circular(5.0),
              border: Border.all(width: 2, color: Colors.red),
            ),
            autovalidateMode: AutovalidateMode.onUserInteraction,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 50, left: 50, top: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                pinButton('Back', () {
                  onBackPress();
                }),
                pinButton('Check', () {
                  onCheckPress();
                }),
              ],
            ),
          ),
        ],
      ),
    );
  }
  Widget pinButton(String text, Function onPress) {
    return GestureDetector(
      onTap: () {
        onPress();
      },
      child: Container(
        alignment: Alignment.center,
        width: size.width * 0.15,
        height: size.height * 0.05,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.amber,
        ),
        child: Text(text,
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}