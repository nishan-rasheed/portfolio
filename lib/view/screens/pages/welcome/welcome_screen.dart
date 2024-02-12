import 'package:flutter/material.dart';
import 'package:nishan_profile/view/screens/widgets/common_text.dart';
import 'package:nishan_profile/view/screens/widgets/custom_button.dart';
import 'package:responsive_framework/responsive_framework.dart';
import '../../../../constants/app_font_styles.dart';

class WelcomeScreenWidget extends StatelessWidget {
  const WelcomeScreenWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;
    final h = MediaQuery.of(context).size.height;

    return SizedBox(
      height: h-kToolbarHeight,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 20),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
         children: [
         CommonText(text:  'Hello, I\'m Nishan Rasheed\na flutter developer',
         style:
         ResponsiveBreakpoints.of(context).isDesktop?
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
             CommonAnimatedButton(title: 'resume')
           ],
         ),
         ],
        ),
      ),
    );
  }
}

