import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hamroapp/src/features/authentication/screens/welcome_screen/welcome_screen.dart';

class SplashScreenController extends GetxController{
  static SplashScreenController get find => Get.find();
  RxBool animate = false.obs;

  Future starAnimation() async{
    await Future.delayed(Duration(milliseconds: 500));
    animate.value=true;
    await Future.delayed(Duration(milliseconds: 5000));
    Get.to(WelComeScreen());
    // Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>WelComeScreen()));

  }
}