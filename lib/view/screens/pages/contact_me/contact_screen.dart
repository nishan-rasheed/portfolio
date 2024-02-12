import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nishan_profile/constants/app_color.dart';
import 'package:nishan_profile/constants/app_font_styles.dart';
import 'package:nishan_profile/constants/app_log.dart';
import 'package:nishan_profile/constants/app_spaces.dart';
import 'package:nishan_profile/constants/app_strings.dart';
import 'package:nishan_profile/view/screens/widgets/home_appbar.dart';
import 'package:nishan_profile/view/screens/widgets/common_text.dart';
import 'package:nishan_profile/view/screens/widgets/custom_button.dart';

import '../../../../constants/app_icons.dart';
import '../../widgets/common_textfield.dart';
import '../../widgets/page_title_widget.dart';

class ContactScreen extends StatelessWidget {
  const ContactScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var h =MediaQuery.of(context).size.height-kToolbarHeight;
    var w = MediaQuery.of(context).size.width;
    return  SizedBox(
      height: h,
      child: Column(
        children: [
          const PageTitleWidget(
                title: 'snhvsnsbsn', 
                note: 'shhsv hvsmvs nvsnbsnb nbsnb s nbsvnbsbn bnsvnb'),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20,),
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisSize: MainAxisSize.min,
                children: [
                       Expanded(
                         child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                         mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            CommonText(text:AppString.letsChat,
                            style: AppFonts.style50,
                            ),
                            CommonText(text:AppString.letsCreate,
                            style: AppFonts.style25,
                            ),
                            cmHeight10,
                            Row(
                              children: [
                                Container(
                                  padding: EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(7)
                                  ),
                                  child: Icon(Icons.email)),
                                cmWidth10,  
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    CommonText(text: 'Mail me at'),
                                    CommonText(text: 'nishanrasheed786@gmail.com'),
                                  ],
                                )
                              ],
                            )
                          ],
                         ),
                       ),
                    
                       Expanded(
                         child: Container(
                          height: h*.7,
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
                           mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                             CommonText(text:AppString.sendAmail,
                              style: AppFonts.style15,
                              ),
                              CommonTextField(hint: 'Enter Your Name',),
                              CommonTextField(hint: 'Enter Your Email',),
                              CommonTextField(maxLines: 5,
                              hint: 'Enter Your Message'
                              ),
                         
                              CommonAnimatedButton(title: 'Submit',
                              onPressed: () {
                                customLog('max$h---appbar${kToolbarHeight}--real${HomeAppbar().preferredSize.height}--');
                              },
                              ),
                                                
                            ],
                           ),
                         ),
                       ),
          
          
                ],
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            color: Colors.black,
            height: h*.2,
            width: w,
            child: Row(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: CommonText(text: 'Copyright © nishan rasheed',
                  style: AppFonts.style15.copyWith(
                    color: AppColor.backgroundColor
                  ),
                  ),
                ),

                Expanded(
                  child: CommonText(text: 'Made with Flutter by nishan',
                  style: AppFonts.style15.copyWith(
                    color: AppColor.backgroundColor
                  ),
                  ),
                ),

               Row(
                children: [
               SvgPicture.asset(AppIcons.gitIcon,height: 30,width: 30,color: AppColor.backgroundColor,),
               cmWidth10,
               SvgPicture.asset(AppIcons.linkedinIcon,height: 30,width: 30,color: AppColor.backgroundColor,),
                ],
               )
              ],
            ),
          )
        ],
      ),
    );
  }
}

