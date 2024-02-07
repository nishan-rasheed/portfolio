import 'package:flutter/material.dart';
import 'package:nishan_profile/view/test_screen.dart';

import '../../../constants/app_color.dart';
import 'widgets/home_appbar.dart';
import 'widgets/project_screen.dart';
import 'widgets/welcome_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:HomeAppbar() ,
      body:SingleChildScrollView(
        child: Column(
          children: [
            WelcomeScreenWidget(),
          ],
        ),
      )
      // SingleChildScrollView(
      //   child: Column(
      //     children: [
      //       WelcomeScreenWidget(),
      //       ProjectsSection()
      //     ],
      //   ),
      // )
      
      // ScrollingListView(),
      //  PageView(
      //   // pageSnapping: false,
      //   physics: PageScrollPhysics(),
      //   scrollDirection: Axis.vertical,
      //   children: [
      //      WelcomeScreenWidget(),
      //      ProjectScreen()
      //   ],
      // ),
    );
  }
}

