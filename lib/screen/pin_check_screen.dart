import 'package:flutter/material.dart';
import 'package:movie_application/screen/register_screen.dart';
import 'package:movie_application/widget/input_phoneNumber_ui.dart';
import 'package:movie_application/widget/input_sms_pin.dart';

class PinCheckScreen extends StatefulWidget {
  @override
  _PinCheckScreenState createState() => _PinCheckScreenState();
}

class _PinCheckScreenState extends State<PinCheckScreen> {
  final TextEditingController _pinPutController = TextEditingController();
  final TextEditingController _textController = TextEditingController();
  bool visibilityTag = false;

  @override
  void dispose() {
    _pinPutController.dispose();
    _textController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery
        .of(context)
        .size;
    final keyboardSize = MediaQuery
        .of(context)
        .viewInsets
        .bottom;
    return Scaffold(
      backgroundColor: Colors.black,
      body: visibilityTag == false ? InputPhoneNumber(
        size: size,
        hint: 'input yor number to send verify key',
        textController: _textController,
        keyboardSize: keyboardSize,
        onPressed: () {
          if (_textController.text == '09363211109') {
            setState(() {
              visibilityTag = true;
            });
          } else {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text('Please input number')),);
          }
        },
      ) : InputSMSPin(pinPutController: _pinPutController,
        size: size,
        onBackPress: () {
          setState(() {
            visibilityTag = false;
          });
        },
        onCheckPress: () {
          if (_pinPutController.text == '1111') {
            Navigator.pushReplacement(context, MaterialPageRoute(
              builder: (context) => RegisterScreen(),));
          } else {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text('Please input valid number')),);
          }
        },
      ),
    );
  }
}