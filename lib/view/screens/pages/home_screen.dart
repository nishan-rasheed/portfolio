import 'package:flutter/material.dart';
import '../../../constants/app_assets.dart';
import '../widgets/home_appbar.dart';
import 'home_body.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late Image image1;


  @override
  void initState() {
    super.initState();
    image1 = Image.asset(AppAssets.backgroundImg);

  }

  @override
  void didChangeDependencies() {
    precacheImage(image1.image, context);
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar:HomeAppbar() ,
      body:  HomeBodyScreen(image:image1.image ,),
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


