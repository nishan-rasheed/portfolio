import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nishan_profile/constants/app_color.dart';
import 'package:nishan_profile/controller/home/home_controller.dart';
import 'package:nishan_profile/view/screens/pages/home_screen.dart';
import 'package:nishan_profile/view/screens/splash_screen.dart';
import 'package:nishan_profile/view/test_screen.dart';
import 'package:provider/provider.dart';
import 'package:responsive_framework/responsive_framework.dart';

import 'constants/app_assets.dart';

void main() {

  final binding = WidgetsFlutterBinding.ensureInitialized();

  binding.addPostFrameCallback((_) async {
    Element? context = binding.renderViewElement;
    if(context != null)
      {

        precacheImage(const AssetImage(AppAssets.backgroundImg), context);
        // for(var asset in _allAsset)
        // {
        //   precacheImage(AssetImage(asset), context);
        // }
      }
  });
  runApp( const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;
    final h = MediaQuery.of(context).size.height;

    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => HomeController(),)
      ],
      child: MaterialApp(
            
            builder: (context, child) => ResponsiveBreakpoints.builder(
              child: child!,
              breakpoints: [
                const Breakpoint(start: 0, end: 450, name: MOBILE),
                const Breakpoint(start: 451, end: 800, name: TABLET),
                const Breakpoint(start: 801, end: 1920, name: DESKTOP),
                const Breakpoint(start: 1921, end: double.infinity, name: '4K'),
              ],
            ),
            scrollBehavior: MaterialScrollBehavior().copyWith(
              dragDevices: {
                PointerDeviceKind.touch,
                PointerDeviceKind.mouse,
              }
            ),
            debugShowCheckedModeBanner: false,
            title: 'Nishan Rasheed',
            theme: ThemeData(
              scaffoldBackgroundColor: AppColor.backgroundColor,
              primarySwatch: Colors.blue,
                textTheme: GoogleFonts.poppinsTextTheme(
                    Theme.of(context).textTheme,
                  ),
            ),
            home:SplashScreen()
             //HomeScreen()
            //TestScreen()//HomeScreen(),
          ),
    );
  }
}
