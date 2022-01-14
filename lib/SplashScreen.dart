import 'dart:async';

import 'package:flutter/material.dart';
import 'package:pred/Credential.dart';
import 'package:pred/Screen1.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 5), () {
      setState(() {
        Navigator.of(context).pushAndRemoveUntil(
            MaterialPageRoute(builder: (context) => Credential()),
            (route) => false);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(fit: StackFit.expand, children: [
      Container(
          // color: Colors.amber,
          child: Image.asset("images/pic.jpg",
              fit: BoxFit.fill,
              color: Colors.black54,
              colorBlendMode: BlendMode.darken)),
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 200,
            width: 200,
            child: Image.asset("images/splash.gif"),
          ),
          CircularProgressIndicator()
        ],
      )
    ]);
  }
}
