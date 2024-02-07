import 'package:flutter/material.dart';
import 'package:nishan_profile/view/test_screen.dart';

import '../../../constants/app_color.dart';
import 'pages/home_body.dart';
import 'widgets/home_appbar.dart';
import 'pages/project_screen.dart';
import 'pages/welcome_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:HomeAppbar() ,
      body:const HomeBodyScreen(),
    );
  }
}


