// import 'package:flutter/material.dart';
// import 'package:nishan_profile/constants/app_font_styles.dart';
// import 'package:nishan_profile/constants/app_spaces.dart';
// import 'package:nishan_profile/constants/app_strings.dart';
// import 'package:nishan_profile/view/screens/widgets/common_text.dart';

import 'package:flutter/material.dart';
import 'package:nishan_profile/view/screens/widgets/common_text.dart';
import 'package:nishan_profile/view/screens/widgets/custom_button.dart';
import 'package:nishan_profile/view/screens/widgets/page_title_widget.dart';
import 'package:responsive_framework/responsive_framework.dart';

import '../../../../constants/app_font_styles.dart';
import '../../../../constants/app_spaces.dart';
import '../../../../constants/app_strings.dart';
import '../../widgets/app_divider.dart';
import 'widgets/service_offer_tile.dart';

class AboutScreen extends StatelessWidget {
   AboutScreen({Key? key}) : super(key: key);


  List skillList = [
    'Flutter',
    "Dart",
    "Firebase",
    "Mobile app development",
    "Rest API",
    "Git",
    "Provider",
    "Bloc",
    "Responsive design",
    "AWS",
    "Figma",
    "Cross platform development"

   ];

   List serviceList = [
   'mobile app development',
   "web development",
   "Responsive design",
    "AWS",
    "Figma",
    "Cross platform development"

   ];

  @override
  Widget build(BuildContext context) {
    var w =  MediaQuery.of(context).size.width;
    var h =  MediaQuery.of(context).size.height-kToolbarHeight;
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
        SizedBox(
          height: h,
          child: Column(
            children: [
              const PageTitleWidget(
            title: 'snhvsnsbsn', 
            note: 'shhsv hvsmvs nvsnbsnb nbsnb s nbsvnbsbn bnsvnb'),
          Expanded(
            child: Row(crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                    CommonText(text: 'Get to Know me',
                    style: AppFonts.style30,),  
                    cmHeight20,
                  CommonText(text: AppString.paraone,
                  style: AppFonts.style20,
                  ),
                               CommonText(text: AppString.paraTwo,
                               style: AppFonts.style20,),


                               Spacer(),
                  
                               CommonAnimatedButton(title: 'Hire me'),

                               cmHeight20
                    ],
                  ),
                ),
          
                cmWidth20,
              
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                     CommonText(text: 'My Skills',
                      style: AppFonts.style30,), 
                      cmHeight15,
              
                     Wrap(
                      spacing: 15,
                      runSpacing: 15,
                      children: [
                        ...List.generate(skillList.length, (index) => CommonAnimatedButton(title: skillList[index]))
                      ],
                     )
                    ],
                  ),
                )
                
              ],
            ),
          ),
            ],
          ),
        ),

         


        

          //  const Wrap(
          //   spacing: 20,runSpacing: 20,
          //   children: [
          //     ServiceOfferTile(),
          //     ServiceOfferTile(),
          //   ],
          //  ),
 




         Row(
          children: [
         CommonText(text: 'Services i offer :',
          style: AppFonts.style30,),
          Expanded(
            child: SizedBox(
              height: w*.2,
              child: ListView.separated(
                physics: ScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemCount: serviceList.length,
                separatorBuilder: (BuildContext context, int index) {
                  return cmWidth10;
                },
                itemBuilder: (BuildContext context, int index) {
                  return  ServiceOfferTile(text:serviceList[index] ,);
                },
              ),
            ),
          ),
         ],),

          // ListView.separated(
          //   shrinkWrap: true,
          //   itemCount: 2,
          //   separatorBuilder: (BuildContext context, int index) {
          //     return cmHeight10;
          //   },
          //   itemBuilder: (BuildContext context, int index) {
          //     return ServiceOfferTile();
          //   },
          // ),


    //        GridView.builder(
    //         padding: EdgeInsets.symmetric(horizontal: 30),
    //         shrinkWrap: true,
    //          gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(
    //            crossAxisCount: ResponsiveBreakpoints.of(context).largerThan(MOBILE)?2:1,
    //            crossAxisSpacing:100,
    // mainAxisSpacing:20,
    // childAspectRatio: 1.5
    //          ),
          //    itemCount: 2,

          //    itemBuilder: (BuildContext context, int index) {
          //      return ServiceOfferTile();
          //    },
          //  ),

           cmHeight20    
    
        ],
      ),
    );
  }
}



