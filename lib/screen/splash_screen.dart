import 'dart:async';
import 'package:flutter/material.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:lottie/lottie.dart';
import 'package:movie_application/screen/pin_check_screen.dart';
import 'package:movie_application/shared_preferences.dart';
import 'home_movie.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  bool isConnect = false;

  starter() {
    var _duration = new Duration(seconds: 5);
    if (UserDataPreferences.getEmail() != null) {
      return Timer(_duration, () {
        Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (context) => HomeMovieApplication()),);
      });
    } else {
      return Timer(_duration, () {
        Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (context) => PinCheckScreen()),);
      });
    }
  }

  @override
  initState() {
    super.initState();
    InternetConnectionChecker().onStatusChange.listen((event) {
      final isConnect = event == InternetConnectionStatus.connected;
      setState(() {
        this.isConnect = isConnect;
        if (isConnect == true) {
          starter();
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: isConnect == true ? Container(
          margin: EdgeInsets.all(50),
          child: Lottie.asset('assets/animation/movie.json',
            reverse: true,
            repeat: true,
          ),
        ) : noInternetConnected(() {
          if (isConnect == true) {
            Navigator.pushReplacement(context, MaterialPageRoute(
              builder: (context) => HomeMovieApplication(),),
            );
          }
        }),
      ),
    );
  }

  Widget noInternetConnected(Function onPress) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Internet Not Connected Please Check',
            style: TextStyle(
              color: Colors.amber,
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(height: 10),
          GestureDetector(
            onTap: () {
              onPress();
            },
            child: Container(
              alignment: Alignment.center,
              width: 100,
              height: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.red[900],
              ),
              child: Text('Retry',
                style: TextStyle(color: Colors.white,),
              ),
            ),
          ),
        ],
      ),
    );
  }
}