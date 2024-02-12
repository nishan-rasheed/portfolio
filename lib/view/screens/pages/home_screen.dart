import 'package:flutter/material.dart';
import '../widgets/home_appbar.dart';
import 'home_body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:HomeAppbar() ,
      body: const HomeBodyScreen(),
    );
  }
}

// class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
//   final double height;

//   CustomAppBar({Key? key, this.height = 400}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: height,
//       color: Colors.blue, // Customize your app bar color here
//       child: Center(
//         child: Text(
//           'Custom App Bar',
//           style: TextStyle(
//             fontSize: 24,
//             fontWeight: FontWeight.bold,
//             color: Colors.white, // Customize your text color here
//           ),
//         ),
//       ),
//     );
//   }

//   @override
//   Size get preferredSize => Size.fromHeight(height);
// }


