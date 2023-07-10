import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nishan_profile/constants/app_icons.dart';
import 'package:nishan_profile/view/test_screen.dart';
import '../../../constants/app_font_styles.dart';

class WelcomeScreenWidget extends StatefulWidget {
  const WelcomeScreenWidget({
    super.key,
  });

  @override
  State<WelcomeScreenWidget> createState() => _WelcomeScreenWidgetState();
}

class _WelcomeScreenWidgetState extends State<WelcomeScreenWidget> {

  bool isHovered = false;
  @override
  Widget build(BuildContext context) {
    final maxHeight = MediaQuery.of(context).size.height;
    final maxwidth = MediaQuery.of(context).size.width;
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: maxwidth*.03,vertical: maxHeight*.01),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
       children: [
       Row(
         children: [
          IconButton(
            onPressed: (){}, 
            icon: Icon(Icons.home)),
           Text('ABOUTs',
           style:AppFonts.topRowFont,),
           Padding(
             padding:  EdgeInsets.symmetric(horizontal: maxwidth*.01,),
             child: InkWell(
              onTap: () {
              // Navigator.push(context, MaterialPageRoute(builder:(context) => TestScreen(),));
              },
              onHover: (value) {
        
                setState(() {
                  isHovered = value;
                });
                
              },
               child:AnimatedContainer(
        duration: Duration(milliseconds: 200),
        decoration: BoxDecoration(
          border: isHovered
              ? Border(
                  bottom: BorderSide(
                    color: Colors.blue, // Change the color as needed
                    width: 2.0, // Change the underline width as needed
                  ),
                )
              : null,
        ),
        child: Text('CONTACT',
               style:TextStyle(
                fontSize: 15,
                color:isHovered?Colors.green: Colors.black
               )),
      ),
               
               
                
             ),
           ),
           Text('PROJECTS',
           style:AppFonts.topRowFont,),
    
           Spacer(),
           SvgPicture.asset(AppIcons.gitIcon),
           SvgPicture.asset(AppIcons.linkedinIcon),
         ],
       ),
    
    
       Text('Hello, I\'m Nishan Rasheed\na flutter developer',
       style: GoogleFonts.nunitoSans(
        fontSize: 67,
        fontWeight: FontWeight.w500,
        color: Colors.black
       ),),
       Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
         children: [
           Container(color: Colors.amber,
            width: maxwidth*.6,
             child: Text('I am a frontend developer who loves to work on the web. I am passionate about building simple and elegant solutions to complex problems.',
             style: TextStyle(
              fontSize:40,
              fontWeight: FontWeight.normal,
              color: Colors.black
             ),),
           ),
           Container(
            padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
            alignment: Alignment.center,
            color: Colors.green,
            child: Row(
              children: [
                Icon(Icons.download),
                Text('download my CV'),
              ],
            ),
           )
         ],
       ),

       Align(
        alignment: Alignment.center,
         child: Text('Swipe down to see my projects',
         style: TextStyle(
          fontSize: 25,
          color: Colors.grey.shade500
         ),),
       )
       ],
      ),
    );
  }
}

