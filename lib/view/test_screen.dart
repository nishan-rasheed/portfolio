import 'package:flutter/material.dart';
import 'package:nishan_profile/constants/app_assets.dart';
import 'package:nishan_profile/constants/app_spaces.dart';
import 'package:nishan_profile/view/screens/pages/welcome/welcome_screen.dart';
import 'package:nishan_profile/view/screens/widgets/common_text.dart';
import 'package:nishan_profile/view/screens/widgets/home_appbar.dart';

class TestScreen extends StatelessWidget {
  const TestScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;
    final h = MediaQuery.of(context).size.height;
    return Scaffold(
      // appBar: AppBar(backgroundColor: Colors.transparent,),
      body: Container(
        height: h,width: w,
        decoration: BoxDecoration(
          color: Colors.grey.shade400,
          gradient: LinearGradient(
            colors: [
            Colors.amber,
            Colors.green
          ]),
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(AppAssets.backgroundImg))
        ),
        child: CommonText(text: 'gccccch gcffcg'),
      )
    );
  }
}

// class ProjectsSection extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container(color: Colors.red,
//       // Set the container properties as needed
//       child: Row(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [

          

//           Padding(
//             padding: EdgeInsets.symmetric(vertical: 20),
//             child: Text(
//               'Latest Projects',
//               style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
//             ),
//           ),
//           Expanded(
//             child:
//                ListView.builder(
//                 shrinkWrap: true,
//                  itemCount: 4,
//                  itemBuilder: (BuildContext context, int index) {
//                    return   ProjectItem(
//                                 projectName: 'Responsive space travel website',
//                                 description: 'A website for a spaceflight company, Sphere, offering trips to Mars.',
//                                 imageUrl: 'https://uploads-ssl.webflow.com/5f3591563107295bd1f3022c/5fb56f1b4b67c1af051d5df2_smartmockups_khnrs7yp.png',
//                                 projectUrl: '/case-study-sphere',
//                               );
//                  },
//                ),

//             //  ListView(
//             //   shrinkWrap: true,
//             //   physics: NeverScrollableScrollPhysics(),
//             //   children: [
//             //     ProjectItem(
//             //       projectName: 'Responsive space travel website',
//             //       description: 'A website for a spaceflight company, Sphere, offering trips to Mars.',
//             //       imageUrl: 'https://uploads-ssl.webflow.com/5f3591563107295bd1f3022c/5fb56f1b4b67c1af051d5df2_smartmockups_khnrs7yp.png',
//             //       projectUrl: '/case-study-sphere',
//             //     ),
//             //     ProjectItem(
//             //       projectName: 'News aggregator website',
//             //       description: 'A nonpartisan platform that serves as a news aggregator for meaningful discourse on America\'s issues.',
//             //       imageUrl: 'https://uploads-ssl.webflow.com/5f3591563107295bd1f3022c/5fb6ce1843ae9606f37442bd_ONC%20Mockup.png',
//             //       projectUrl: '/case-study-onc',
//             //     ),
//             //     // Add more project items here
//             //   ],
//             // ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// class ProjectItem extends StatelessWidget {
//   final String projectName;
//   final String description;
//   final String imageUrl;
//   final String projectUrl;

//   ProjectItem({
//     required this.projectName,
//     required this.description,
//     required this.imageUrl,
//     required this.projectUrl,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: EdgeInsets.all(16),
//       child: Row(
//         children: [
//           Expanded(
//             flex: 1,
//             child: Container(color: Colors.blue,
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text(
//                     projectName,
//                     style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//                   ),
//                   SizedBox(height: 8),
//                   Text(description),
//                   SizedBox(height: 8),
//                   ElevatedButton(
//                     onPressed: () {
//                       // Handle button press
//                     },
//                     child: Text('View Project'),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//           SizedBox(width: 16),
//           Expanded(
//             flex: 1,
//             child: Container(color: Colors.teal,
//               child: Image.network(imageUrl)),
//           ),
//         ],
//       ),
//     );
//   }
// }