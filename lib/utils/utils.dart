import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:getx_mvvmmvc/res/colors/app_colors.dart';

class Utils{
  static void fieldFocusChange(BuildContext context, FocusNode current, FocusNode nextFocus){
    current.unfocus();
    FocusScope.of(context).requestFocus(nextFocus);
  }

  static toastMessagge(String message){
    Fluttertoast.showToast(
      msg: message,
      backgroundColor: AppColors.blackColor,
      gravity: ToastGravity.BOTTOM
      );
    
  }

  static toastMessaggeCenter(String message){
    Fluttertoast.showToast(
      msg: message,
      backgroundColor: AppColors.blackColor,
      gravity: ToastGravity.CENTER
      );
    
  }

  static snackBar(String message,String title){
    Get.snackbar(
      title,
       message
       );
  }
}