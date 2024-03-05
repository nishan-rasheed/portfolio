import 'package:flutter/material.dart';
import 'package:nishan_profile/constants/app_assets.dart';
import 'package:nishan_profile/controller/home/home_controller.dart';
import 'package:nishan_profile/view/screens/widgets/common_text.dart';
import 'package:nishan_profile/view/screens/widgets/custom_button.dart';
import 'package:provider/provider.dart';
import 'package:responsive_framework/responsive_framework.dart';
import '../../../../constants/app_font_styles.dart';
import '../../../../constants/app_spaces.dart';

class WelcomeScreenWidget extends StatelessWidget {
   WelcomeScreenWidget({
    super.key,
  });


  String img ='https://images.unsplash.com/photo-1548685913-fe6678babe8d?q=80&w=2038&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D';

  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;
    final h = MediaQuery.of(context).size.height;

    return Container(
      // decoration: BoxDecoration(
      //   image: DecorationImage(
      //     fit: BoxFit.cover, 
      //     image: AssetImage(AppAssets.backgroundImg,
          
      //     ))
      // ),
      height: h-customAppBarHeight,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 20),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
         children: [
         
          CommonText(text: 'Hello, I\'m Nishan Rasheed\na flutter developer',
           style:ResponsiveBreakpoints.of(context).isDesktop?
            AppFonts.style60:AppFonts.style30),
         Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
           children: [
             SizedBox(
              width: w*.6,
              child:CommonText(text: 'I am a frontend developer who loves to work on the web. I am passionate about building simple and elegant solutions to complex problems.',
              style: 
              ResponsiveBreakpoints.of(context).isDesktop?
              AppFonts.style40:AppFonts.style20,
              ),
             ),
             Consumer<HomeController>(
          builder: (context, dd, child) =>
          CommonAnimatedButton(title: dd.showAppbar.toString())
           )
           ],
         ),
         ],
        ),
      ),
    );
  }
}

