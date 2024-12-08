import 'package:agriboost/pages/notification.dart';
import 'package:agriboost/startupPages/front_page.dart';
import 'package:flutter/material.dart';
import 'package:svg_flutter/svg.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => FrontPage()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(233, 241, 241, 1),
      body: Center(
          child: Container(
              // color: Colors.white,
              child: Image.asset(
        "assets/splash.jpg",
        height: 200,
        width: 300,
        // fit: BoxFit.contain,
      ))),
    );
  }
}
