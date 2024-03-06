import 'dart:async';

import 'package:flutter/material.dart';
import 'package:nishan_profile/constants/app_log.dart';

import 'pages/home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

   @override
  void initState() {
    // TODO: implement initState
    super.initState();

    Timer mytimer = Timer.periodic(Duration(seconds: 1), (timer) {
        DateTime timenow = DateTime.now();  //get current date and time
          print('seconds');
        //mytimer.cancel() //to terminate this timer
     });
    // after 3 second it will navigate
    
    Future.delayed(const Duration(seconds: 3)).then((val) {
     Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen(),));
    });
  }


  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
    );
  }
}