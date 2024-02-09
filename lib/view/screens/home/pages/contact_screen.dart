import 'package:flutter/material.dart';
import 'package:nishan_profile/constants/app_color.dart';
import 'package:nishan_profile/constants/app_font_styles.dart';
import 'package:nishan_profile/constants/app_log.dart';
import 'package:nishan_profile/constants/app_spaces.dart';
import 'package:nishan_profile/constants/app_strings.dart';
import 'package:nishan_profile/view/screens/home/widgets/home_appbar.dart';
import 'package:nishan_profile/view/screens/widgets/common_text.dart';
import 'package:nishan_profile/view/screens/widgets/custom_button.dart';

import '../../widgets/common_textfield.dart';

class ContactScreen extends StatelessWidget {
  const ContactScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var h =MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return  Container(
      // color: Colors.amber,
      height: h-kToolbarHeight,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                     Column(crossAxisAlignment: CrossAxisAlignment.start,
                     mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CommonText(text:AppString.letsChat,
                        style: AppFonts.style50,
                        ),
                        CommonText(text:AppString.letsCreate,
                        style: AppFonts.style25,
                        ),
                      ],
                     ),
                  
                     Container(
                      width: w*.4,
                      padding: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
                      decoration: BoxDecoration(
                        color: AppColor.backgroundColor,
                        borderRadius: BorderRadius.circular(30),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.shade100,
                            spreadRadius: 5,blurRadius: 7
                          )
                        ]
                      ),
                  
                       child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                       mainAxisSize: MainAxisSize.min,
                        children: [
                         CommonText(text:AppString.sendAmail,
                          style: AppFonts.style15,
                          ),
                          cmHeight20,
                          CommonTextField(hint: 'Enter Your Name',),
                          cmHeight15,
                          CommonTextField(hint: 'Enter Your Email',),
                          cmHeight15,
                          CommonTextField(maxLines: 5,
                          hint: 'Enter Your Message'
                          ),
                     
                          cmHeight15,
                     
                          CommonAnimatedButton(title: 'Submit',
                          onPressed: () {
                            customLog('max$h---appbar${kToolbarHeight}--real${HomeAppbar().preferredSize.height}--');
                          },
                          ),
                                            
                        ],
                       ),
                     ),


              ],
            ),
          ),
          Container(
            height: 120,
            width: w,
          )
        ],
      ),
    );
  }
}

