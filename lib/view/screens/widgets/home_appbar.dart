
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nishan_profile/constants/app_spaces.dart';
import 'package:nishan_profile/controller/home/home_controller.dart';
import 'package:provider/provider.dart';

import '../../../constants/app_icons.dart';

class HomeAppbar extends StatelessWidget implements PreferredSizeWidget{
   HomeAppbar({
    super.key,
  });

 
   List headerButton = [
    'About Me',
    "Projects",
    "Contacts",
   ];

  @override
  Widget build(BuildContext context) {
    return Consumer<HomeController>(
      builder: (context, homeValue, child) =>
       SizedBox(
        height: kToolbarHeight,
         child: Padding(
           padding: const EdgeInsets.symmetric(horizontal: 15),
           child: Row(
            children: [
              Icon(Icons.home),
            //  IconButton(
            //   onPressed: (){
            //     Scrollable.ensureVisible(
            //     welcomeKey.currentContext!,
            //     duration:const Duration(milliseconds: 300),
            //   );
            //   }, 
            //   icon:const Icon(Icons.home)),
               
             ...List.generate(
               headerButton.length,
               (index) => MouseRegion(
                 onEnter: (event) {
                  homeValue.changeAppBarHeaderColor(index);
                 },
                 onExit: (event) {
                  homeValue.changeAppBarHeaderColor(-1); 
                 },
                 child: InkWell(
                  onTap: () {
                    homeValue.navigateToPage(index);
                  },
                   child: Padding(
                     padding: const EdgeInsets.all(8.0),
                     child: Stack(
                      //mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                       // Text(headerButton[index]),
                       Padding(
                         padding: const EdgeInsets.symmetric(vertical: 5),
                         child: Text(headerButton[index]),
                       ),
                       Positioned(
                         bottom: 0,
                         child: AnimatedContainer(
                          duration:const Duration(milliseconds: 400),
                          width: homeValue.selectedAppBarIndex==index? 80: 0,
                          height: 3,
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(3)
                          ),
                          curve: Curves.fastOutSlowIn,
                                         ),
                       ),
                      ],
                     ),
                   ),
                 )
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
  
  @override
  Size get preferredSize =>  const Size.fromHeight(kToolbarHeight);
}
