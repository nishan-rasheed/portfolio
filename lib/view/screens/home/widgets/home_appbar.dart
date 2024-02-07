
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nishan_profile/constants/app_log.dart';
import 'package:nishan_profile/constants/app_spaces.dart';
import 'package:nishan_profile/controller/home/home_controller.dart';
import 'package:provider/provider.dart';
import 'package:responsive_framework/responsive_framework.dart';

import '../../../../constants/app_icons.dart';

class HomeAppbar extends StatelessWidget implements PreferredSizeWidget{
   HomeAppbar({
    super.key,
  });

  @override

   Size get preferredSize => const Size.fromHeight(100);


   List headerButton = [
    'About Me',
    "Contacts",
    "Projects"
   ];

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: ResponsiveBreakpoints.of(context).largerThan(MOBILE)?Colors.red: Colors.amber,
      child: Consumer<HomeController>(
        builder: (context, homeValue, child) =>
         Padding(
           padding: const EdgeInsets.symmetric(horizontal: 15),
           child: Row(
            children: [
             IconButton(
              onPressed: (){}, 
              icon:const Icon(Icons.home)),
               
             ...List.generate(
               headerButton.length,
               (index) => MouseRegion(
                 onEnter: (event) {
                  homeValue.changeAppBarHeaderIndex(index);
                 },
                 onExit: (event) {
                  homeValue.changeAppBarHeaderIndex(-1); 
                 },
                 child: Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: Column(mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                     Text(headerButton[index]),
                     AnimatedContainer(
                      duration: Duration(microseconds: 2089),
                      // child: Text('sjsxss'),
                      width: homeValue.selectedAppBarIndex==index? 80: 0,
                      height: 2,
                      color: Colors.amber,
                      curve: Curves.fastOutSlowIn,
                    ),
                    ],
                   ),
                 )
                //  AnimatedContainer(duration: Duration(milliseconds: 1245),
                //         curve: Curves.linear,
                //         margin:const EdgeInsets.symmetric(horizontal: 10),
                //         // height: homeValue.selectedAppBarIndex==index?2:0,
                //         // width: homeValue.selectedAppBarIndex==index?double.infinity:0,
                //        decoration: BoxDecoration(
                //         color:homeValue.selectedAppBarIndex==index? Colors.green.shade200:null,

                //        ),
                //        child: Text(headerButton[index]),
                //        )
               )),
         
               const Spacer(),
              
               SvgPicture.asset(AppIcons.gitIcon,height: 30,width: 30,),
               cmWidth10,
               SvgPicture.asset(AppIcons.linkedinIcon,height: 30,width: 30,),
               
            ],
            
                 ),
         ),
      ),
    );
  }
}
