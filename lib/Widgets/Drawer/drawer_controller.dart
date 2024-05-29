import 'package:flutter/material.dart';

class CustomDrawerController extends ChangeNotifier {
  

  int indexPage = 0;

  changeIndex(int index){
    indexPage = index;
    notifyListeners();
  }
}