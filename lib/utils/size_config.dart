import 'package:flutter/material.dart';

class SizeConfig {
  static const double desktop = 1290;
  static const double tablet = 650;

  static late double width ,hieght;



  static void initHightWidth(BuildContext context){
    hieght = MediaQuery.sizeOf(context).height;
    width = MediaQuery.sizeOf(context).width;
  }
}