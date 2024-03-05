import 'package:flutter/material.dart';
import 'package:nishan_profile/constants/app_log.dart';
import 'package:nishan_profile/view/screens/pages/home_body.dart';

class HomeController extends ChangeNotifier{

   bool showAppbar = false;
   showAppBAr(bool v,){
     showAppbar = v;
     notifyListeners();
   }


  int selectedAppBarIndex = -1;
 

  changeAppBarHeaderColor(int v,){
  selectedAppBarIndex = v;
  notifyListeners();
  }


  navigateToPage(int index){
    customLog(index.toString());
   switch (index) {
     case 0:
       Scrollable.ensureVisible(
          aboutKey.currentContext!,
          duration:const Duration(milliseconds: 300),
        );
       break;

      case 1:
       Scrollable.ensureVisible(
          projectKey.currentContext!,
          duration:const Duration(milliseconds: 300),
        );
       break;

      case 2:
       Scrollable.ensureVisible(
          contactKey.currentContext!,
          duration:const Duration(milliseconds: 300),
        );
       break;  
     default:
   }
  notifyListeners();
  }

}