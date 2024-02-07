

import 'package:flutter/material.dart';
import 'package:nishan_profile/constants/app_log.dart';
import 'package:nishan_profile/controller/home/home_controller.dart';
import 'package:nishan_profile/view/screens/home/pages/about_screen.dart';
import 'package:nishan_profile/view/screens/home/pages/contact_screen.dart';
import 'package:nishan_profile/view/screens/home/pages/project_screen.dart';
import 'package:nishan_profile/view/screens/home/pages/welcome_screen.dart';
import 'package:provider/provider.dart';


final welcomeKey = GlobalKey();
  final aboutKey = GlobalKey();
  final projectKey = GlobalKey();
  final contactKey = GlobalKey();

class HomeBodyScreen extends StatefulWidget {
  const HomeBodyScreen({
    super.key,
  });

  @override
  State<HomeBodyScreen> createState() => _HomeBodyScreenState();
}

class _HomeBodyScreenState extends State<HomeBodyScreen> {

    final ScrollController _controller = ScrollController();
  

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      getHeight();
    });
    
    super.initState();
  }

  getHeight(){
    
    var welcomeHeight = welcomeKey.currentContext?.size?.height??0;
    var projectHeight = projectKey.currentContext?.size?.height??0;
    var aboutHeight = aboutKey.currentContext?.size?.height??0;
    var contactHeight = contactKey.currentContext?.size?.height??0;
    _controller.addListener(() {
      customLog(_controller.offset.toString());
      if (_controller.position.extentAfter==0) {
      Provider.of<HomeController>(context,listen: false).changeAppBarHeaderColor(2);
      }
     else if (_controller.offset<welcomeHeight) {
        Provider.of<HomeController>(context,listen: false).changeAppBarHeaderColor(-1);
       
      }
     else if (_controller.offset<(welcomeHeight+aboutHeight)) {
        Provider.of<HomeController>(context,listen: false).changeAppBarHeaderColor(0);
      }
      else if (_controller.offset<(welcomeHeight+aboutHeight+projectHeight)) {
        Provider.of<HomeController>(context,listen: false).changeAppBarHeaderColor(1);
      }
       else {
        
      }
    });
    // customLog(ww.toString());
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      controller: _controller,
      child: Column(
        children: [
          WelcomeScreenWidget(key: welcomeKey,),
          AboutScreen(key: aboutKey,),
          ProjectScreen(key: projectKey,),
          ContactScreen(key: contactKey,),
          
          
        ],
      ),
    );
  }
}