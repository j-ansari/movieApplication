import 'package:flutter/material.dart';
import 'package:movie_application/provider/auth_provider.dart';
import 'package:movie_application/widget/login_ui.dart';
import 'package:movie_application/widget/signUp_ui.dart';
import 'package:provider/provider.dart';

class RegisterScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {

  final TextEditingController userNameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController phoneNumberController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  late AuthProvider authProvider;
  bool isVisible = false;

  @override
  void initState() {
    super.initState();
    authProvider = Provider.of<AuthProvider>(context, listen: false);
  }

  @override
  void dispose() {
    userNameController.dispose();
    emailController.dispose();
    phoneNumberController.dispose();
    passwordController.dispose();
    authProvider.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final keyboardSize = MediaQuery
        .of(context)
        .viewInsets
        .bottom;
    final size = MediaQuery
        .of(context)
        .size;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Color(0xff211421),
        automaticallyImplyLeading: false,
        title: Text('Register Page',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: SizedBox(
        height: size.height - keyboardSize,
        child: isVisible == false
            ? SignUpUI(
          size: size,
          usernameController: userNameController,
          passwordController: passwordController,
          phoneNumberController: phoneNumberController,
          emailController: emailController,
          authProvider: authProvider,
          onPress: () {
            setState(() {
              isVisible = true;
            });
          },
        )
            : LoginUI(
          size: size,
          emailController: emailController,
          phoneNumberController: phoneNumberController,
          passwordController: passwordController,
          authProvider: authProvider,
          onPress: () {
            setState(() {
              isVisible = false;
            });
          },
        ),
      ),
    );
  }
}