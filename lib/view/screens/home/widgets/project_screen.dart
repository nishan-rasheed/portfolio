import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProjectScreen extends StatelessWidget {
   ProjectScreen({Key? key}) : super(key: key);

  ScrollController _controller = ScrollController();

  @override
  Widget build(BuildContext context) {
    final maxHeight = MediaQuery.of(context).size.height;
    final maxwidth = MediaQuery.of(context).size.width;
    return  Padding(
        padding: EdgeInsets.symmetric(horizontal: maxwidth*.03,vertical: maxHeight*.01),
        child: Row(
          children: [
           Padding(
             padding: const EdgeInsets.symmetric(horizontal: 40),
             child: RotatedBox(
              quarterTurns: 3,
               child: Text('Latest Projects',
               style: TextStyle(
                  fontSize:40,
                  fontWeight: FontWeight.bold,
                  color: Color(0xffD9D9D9)
                 ),),
             ),
           ),
           Expanded(child: 
           Container(
            // height: 400,
            color: Colors.red,
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: 10,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  margin: EdgeInsets.symmetric(vertical: 40),
                  height: 200,color: Colors.teal,
                  child: Text('dhjhdbhjbd'));
              },
            ),))
          //  Expanded(
          //    child: Container(
          //     // width: maxwidth,
          //      child: ListView.separated(
          //       controller: _controller,
          //       // shrinkWrap: true,
          //        itemCount: 3,
          //        separatorBuilder: (context, index) {
          //          return SizedBox();
          //        },
          //        itemBuilder: (BuildContext context, int index) {
          //          return Padding(
          //            padding: EdgeInsets.only(bottom: maxHeight*.02),
          //            child: Row(
          //             children: [
          //               Container(color: Colors.red,
          //               width: maxwidth*.35,
          //                 child: Column(
          //                   children: [
          //                     Text('Moneyscop app',
          //                     style: GoogleFonts.nunitoSans(
          //                       fontSize: 30
          //                     ),),
          //                     Text('shbsh jhbshsb sjbhsj jhbshs  jbhss'),
          //                   ],
          //                 ),
          //               ),
          //               Expanded(
          //                 child: Container(
          //                   height: maxHeight*.9,
          //                   color: Colors.green,
          //                   child: Image.network('https://uploads-ssl.webflow.com/5f3591563107295bd1f3022c/5fb5766c64db1c845c7f5e1e_OneHealth%20Mockup.png',
          //                   fit: BoxFit.contain,
          //                   ),
          //                 ),
          //               )
          //             ],
          //            ),
          //          );
          //        },
          //      ),
          //    ),
          //  ),
          ],
        ),
        
      );
  }
}