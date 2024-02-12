import 'package:flutter/material.dart';
import 'package:nishan_profile/constants/app_font_styles.dart';
import 'package:nishan_profile/constants/app_spaces.dart';
import 'package:nishan_profile/view/screens/widgets/common_text.dart';

import '../../widgets/home_appbar.dart';
import '../../widgets/page_title_widget.dart';

class ProjectScreen extends StatelessWidget {
   ProjectScreen({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
  final w = MediaQuery.of(context).size.width;
   var h =MediaQuery.of(context).size.height-kToolbarHeight;
    return  Column(
      children: [
        const PageTitleWidget(
              title: 'snhvsnsbsn', 
              note: 'shhsv hvsmvs nvsnbsnb nbsnb s nbsvnbsbn bnsvnb'),
        ListView.separated(
          padding: EdgeInsets.symmetric(horizontal: 20),
      shrinkWrap: true,
      itemCount: 3,
      separatorBuilder: (BuildContext context, int index) {
        return Divider(color: Colors.black,);
      },
      itemBuilder: (BuildContext context, int index) {
        return IntrinsicHeight(
          child: Row(
            children: [
             Image.network('https://d33wubrfki0l68.cloudfront.net/19c708670a1f21231c1e2efa6ba38dbf52b15343/3237e/assets/jpeg/dopefolio.jpeg',
             height: h,width: w*.6,
             ),
             cmWidth20,
             Expanded(
               child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CommonText(text: 'Project Title',
                  style: AppFonts.style30,
                  ),
                  cmHeight20,
                  CommonText(text: 'gcgm hvnb v,nvn ,jv,vv, mnmvmn .kjkbk.jb .kjb.kbjjbk kbjkjb\nn,vn ,vv,\nn uglugli ,klg]nl \nkjg.gnv,v ,jhv,vj mjv,vhv,kj',
                  style: AppFonts.style25,
                  ),
        
                  cmHeight20,
                  // cmHeight20,
                  
                  CommonText(text: 'View more',
                  style: AppFonts.style15,
                  ),
        
                ],
               ),
             )
            ],
          ),
        );
      },
    ),
      ],
    );
  }
}