import 'package:flutter/material.dart';

import '../constants/app_color.dart';
import 'home/widgets/project_screen.dart';
import 'home/widgets/welcome_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final maxHeight = MediaQuery.of(context).size.height;
    final maxwidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body:
      // ScrollingListView(),
       PageView(
        // pageSnapping: false,
        physics: PageScrollPhysics(),
        scrollDirection: Axis.vertical,
        children: [
           WelcomeScreenWidget(),
           ProjectScreen()
        ],
      ),
    );
  }
}

