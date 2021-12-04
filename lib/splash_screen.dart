import 'dart:async';

import 'package:flutter/material.dart';
import 'package:shahid/main.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  startTimer(){
    Timer(Duration(seconds: 5),(){
      Route newRoute = MaterialPageRoute(builder: (context) =>HomePage());
      Navigator.pushReplacement(context, newRoute);
    });
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    startTimer();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.red,Colors.blue
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          )
        ),
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 50,),
              Image.asset('statics/images/splash.png'),
              SizedBox(height: 5,),
              Text('بسم ربّ شهدا',textDirection: TextDirection.rtl,
              style: TextStyle(
                fontFamily: 'ir_na',fontSize: 38,fontWeight: FontWeight.bold),),
            ],
          ),
        ),
      ),
    );
  }
}
