import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nishan_profile/constants/app_color.dart';
import 'package:nishan_profile/view/home_screen.dart';
import 'package:nishan_profile/view/test_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: AppColor.backgroundColor,
        primarySwatch: Colors.blue,
          textTheme: GoogleFonts.poppinsTextTheme(
              Theme.of(context).textTheme,
            ),
      ),
      home:  HomeScreen(),
    );
  }
}
