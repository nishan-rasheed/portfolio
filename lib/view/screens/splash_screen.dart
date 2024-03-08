import 'dart:async';

import 'package:flutter/material.dart';
import 'package:nishan_profile/constants/app_log.dart';
import 'package:nishan_profile/view/screens/pages/home_body.dart';
import 'package:nishan_profile/view/test_screen.dart';

import 'pages/home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

   @override
  void initState() {
    super.initState();
    
    Future.delayed(const Duration(seconds: 3)).then((val) {
      Navigator.push(context, MaterialPageRoute(builder: (context) =>const HomeBodyScreen(),));
    });
  }


  
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.amber,
      body: Center(
        child: Hero(
          tag: 'splash',
          child: Icon(Icons.home,size: 100,)),
      ),
    );
  }
}