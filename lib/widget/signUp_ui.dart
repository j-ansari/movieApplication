import 'package:flutter/material.dart';
import 'package:movie_application/provider/auth_provider.dart';
import 'package:movie_application/screen/home_movie.dart';
import 'package:movie_application/shared_preferences.dart';
import 'package:movie_application/widget/textField_widget.dart';

class SignUpUI extends StatelessWidget {

  final Size size;
  final TextEditingController usernameController;
  final TextEditingController emailController;
  final TextEditingController phoneNumberController;
  final TextEditingController passwordController;
  final AuthProvider authProvider;
  final Function onPress;

  SignUpUI({
    required this.size,
    required this.usernameController,
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
          height: size.height * 0.42,
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
              Text('Register:',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              MyTextFiled(
                size: size,
                hint: 'user name',
                iconData: Icons.person_pin,
                obSecure: false,
                textController: usernameController,
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
              if (usernameController.text.isEmpty ||
                  emailController.text.isEmpty ||
                  phoneNumberController.text.isEmpty ||
                  passwordController.text.isEmpty) {
                ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content:(Text('please fill all texBoxes',))));
              } else {
                await authProvider.signUpRequest(
                  userName: usernameController.text,
                  emailAddress: emailController.text,
                  phoneNumber: phoneNumberController.text,
                  password: passwordController.text,
                );
                if (authProvider.isSuccessSignUp == true) {
                  await UserDataPreferences.setUserName(usernameController.text);
                  await UserDataPreferences.setEmail(emailController.text);

                  await Navigator.pushReplacement(context,
                    MaterialPageRoute(
                      builder: (context) => HomeMovieApplication(),
                    ),
                  );
                }
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content:(
                      Text(authProvider.messageResult))));
              }
            },
            child: Text('Register', style: TextStyle(color: Colors.black),
            ),
          ),
        ),
      ],
    );
  }

  Widget loginClick(Function onPress) {
    return Row(
      children: [
        Text('Do you Have Account?  ',
          style: TextStyle(
            color: Colors.white,
            fontSize: 12,
          ),
        ),
        GestureDetector(
          onTap: () {onPress();},
          child: Text('Login',
            style: TextStyle(
              color: Colors.amber,
            ),
          ),
        ),
      ],
    );
  }
}