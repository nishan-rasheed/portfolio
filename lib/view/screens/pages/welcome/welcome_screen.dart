import 'package:flutter/material.dart';
import 'package:nishan_profile/constants/app_assets.dart';
import 'package:nishan_profile/constants/app_strings.dart';
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

    return Stack(
      alignment: Alignment.center,
      children: [
        ShaderMask(
           shaderCallback: (rect) {
            return LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Colors.black, Colors.transparent],
            ).createShader(Rect.fromLTRB(0, 0, rect.width, rect.height));
          },
          blendMode: BlendMode.dstIn,
          child: Image.asset(AppAssets.backgroundImg,
          fit: BoxFit.cover,
          height: h,width: w,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 20),
          child: Center(
            child: Column(crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
             children: [
             
              CommonText(text: AppString.welcomeText1,
               style:ResponsiveBreakpoints.of(context).isDesktop?
                AppFonts.style60:AppFonts.style30),
          
              CommonText(text: AppString.jobTitle,
                 style:ResponsiveBreakpoints.of(context).isDesktop?
                  AppFonts.style60:AppFonts.style30),
              Spacer(),
              CommonAnimatedButton(title: 'Resume')    
             
             ],
            ),
          ),
        ),
      ],
    );
  }
}

