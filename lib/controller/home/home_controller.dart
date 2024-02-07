import 'package:flutter/material.dart';

class HomeController extends ChangeNotifier{

  
  
  int selectedAppBarIndex = -1;

  changeAppBarHeaderIndex(int v){
  selectedAppBarIndex = v;
  notifyListeners();
  }

}