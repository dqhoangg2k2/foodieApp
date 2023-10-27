import 'package:flutter/material.dart';
import 'package:foodie_flutter/resources/app_color.dart';

class AppBoxShadow {
  AppBoxShadow._();

  static const boxShadow = [
    BoxShadow( // kiểu dữ liệu nó là const 
      color: AppColor.shadow,
      offset: Offset(0.0, 3.0),
      blurRadius: 6.0,
    ),
  ];
}


// class aaa  {  1 class , 1 method bth 
//     void aw(){

//     }
// }