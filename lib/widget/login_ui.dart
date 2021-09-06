import 'package:flutter/material.dart';
import 'package:movie_application/provider/auth_provider.dart';
import 'package:movie_application/screen/home_movie.dart';
import 'package:movie_application/widget/textField_widget.dart';

class LoginUI extends StatelessWidget {

  final Size size;
  final TextEditingController emailController;
  final TextEditingController phoneNumberController;
  final TextEditingController passwordController;
  final AuthProvider authProvider;
  final Function onPress;

  LoginUI({
    required this.size,
    required this.emailController,
    required this.phoneNumberController,
    required this.passwordController,
    required this.authProvider,
    required this.onPress,
  });


  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          padding: EdgeInsets.only(top: 10, left: 10, right: 60),
          width: size.width * .85,
          height: size.height * 0.37,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(150),
              bottomRight: Radius.circular(150),
            ),
            color: Colors.grey[900],
          ),
          child:
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Login:',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              MyTextFiled(
                size: size,
                hint: 'email',
                iconData: Icons.email,
                obSecure: false,
                textController: emailController,
              ),
              MyTextFiled(
                size: size,
                hint: 'phone number',
                iconData: Icons.phone_android,
                obSecure: false,
                textController: phoneNumberController,
              ),
              MyTextFiled(
                size: size,
                hint: 'password',
                iconData: Icons.lock,
                obSecure: true,
                textController: passwordController,
              ),
              SizedBox(height: 20),
              loginClick(onPress),
              SizedBox(height: 8),
              forgetPassword(),
            ],
          ),
        ),
        Container(
          width: size.width * 0.22,
          height: size.height * 0.055,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.amber,
          ),
          child: TextButton(
            onPressed: () async {
              if (emailController.text.isEmpty ||
                  phoneNumberController.text.isEmpty ||
                  passwordController.text.isEmpty) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('please fill all fields')),);
              } else {
                await authProvider.loginRequest(
                  email: emailController.text,
                  phoneNumber: phoneNumberController.text,
                  password: passwordController.text,
                );
                if (authProvider.isSuccessLogin == true) {
                  await Navigator.pushReplacement(context,
                      MaterialPageRoute(
                        builder: (context) => HomeMovieApplication(),));
                }
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text(authProvider.messageResult)),);
              }
            },
            child: Text('Login',
              style: TextStyle(color: Colors.black),),
          ),
        ),
      ],
    );
  }

  Widget loginClick(Function onPress) {
    return Row(
      children: [
        Text('dont Have Account?  ',
          style: TextStyle(
            color: Colors.white,
            fontSize: 12,
          ),
        ),
        GestureDetector(
          onTap: () {
            onPress();
          },
          child: Text('Register',
            style: TextStyle(
              color: Colors.amber,
            ),
          ),
        ),
      ],
    );
  }

  Widget forgetPassword() {
    return GestureDetector(
      onTap: () {},
      child: Text('Forget Password?',
        style: TextStyle(
          color: Colors.white,
          fontSize: 10,
        ),
      ),
    );
  }
}