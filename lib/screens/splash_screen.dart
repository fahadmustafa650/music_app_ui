import 'dart:async';
import 'package:flutter/material.dart';
import 'package:music_app/Constants/constants.dart';
import 'package:music_app/screens/sign_in_screen.dart';
import 'package:music_app/screens/sign_up_screen.dart';

class CustomSplashScreen extends StatefulWidget {
  static final id = "/custom_splash_screen";
  @override
  _CustomSplashScreenState createState() => _CustomSplashScreenState();
}

class _CustomSplashScreenState extends State<CustomSplashScreen>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;
  double _opacity = 0;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this, // the SingleTickerProviderStateMixin
      duration: Duration(seconds: 3),
    );
    _controller.forward();
    _controller.addListener(() {
      setState(() {
        _opacity = _controller.value;
      });
    });
    Timer(
        Duration(seconds: 4),
        () => Navigator.push(
            context, MaterialPageRoute(builder: (context) => SignUpScreen())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: kDarkPurpleColor,
      body: Container(
        width: MediaQuery.of(context).size.width * 1,
        height: MediaQuery.of(context).size.height * 1,
        decoration: BoxDecoration(
          color: Color(0xff0a0c10),
          image: backgroundImg,
        ),
        child: Center(
          child: Opacity(
            opacity: _opacity,
            child: Image(
              image: AssetImage('assets/images/logo_text.png'),
            ),
          ),
        ),
      ),
    );
  }
}
