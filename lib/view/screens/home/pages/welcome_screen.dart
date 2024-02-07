import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nishan_profile/constants/app_icons.dart';
import 'package:nishan_profile/view/screens/widgets/custom_button.dart';
import 'package:nishan_profile/view/test_screen.dart';
import '../../../../constants/app_font_styles.dart';

class WelcomeScreenWidget extends StatelessWidget {
  const WelcomeScreenWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final maxHeight = MediaQuery.of(context).size.height;
    final maxwidth = MediaQuery.of(context).size.width;
    return SizedBox(
      height: maxHeight-kToolbarHeight,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 20),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
         children: [
         Text('Hello, I\'m Nishan Rasheed\na flutter developer',
         style: GoogleFonts.nunitoSans(
          fontSize: 67,
          fontWeight: FontWeight.w500,
          color: Colors.black
         ),),
         Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
           children: [
             SizedBox(
              width: maxwidth*.6,
               child:const Text('I am a frontend developer who loves to work on the web. I am passionate about building simple and elegant solutions to complex problems.',
               style: TextStyle(
                fontSize:40,
                fontWeight: FontWeight.normal,
                color: Colors.black
               ),),
             ),
             CustomButtonWidget(title: 'resume')
           ],
         ),
         ],
        ),
      ),
    );
  }
}

