import 'package:flutter/material.dart';
import 'package:nishan_profile/constants/app_assets.dart';
import 'package:nishan_profile/view/screens/widgets/common_text.dart';

class TestImageScreen extends StatelessWidget {
  const TestImageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Center(child:  Image.network(AppAssets.backgroundImg,
          height: 300,width: 200,
          ),),

         const CommonText(text: 'shjsghjgsghjs${AppAssets.backgroundImg}'),
        ],
      ),

    );
  }
}