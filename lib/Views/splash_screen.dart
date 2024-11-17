import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_mvvmmvc/res/assets/image_assets.dart';
import 'package:getx_mvvmmvc/res/colors/app_colors.dart';
import 'package:getx_mvvmmvc/res/components/generl_exception.dart';
import 'package:getx_mvvmmvc/res/components/internet_exceptions.dart';
import 'package:getx_mvvmmvc/res/components/round_button.dart';
import 'package:getx_mvvmmvc/res/fonts/app_fonts.dart';
import 'package:getx_mvvmmvc/utils/utils.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
     floatingActionButton: FloatingActionButton(onPressed: () {
       Utils.toastMessagge('Hassan mirza');
       Utils.toastMessaggeCenter('Hassan mirza');
     },),
     appBar: AppBar(
      title: Text('email_hint'.tr,
      style: const TextStyle(fontFamily: Appfonts.schylerRegular),
      ),
     ),
     body: Column(mainAxisAlignment: MainAxisAlignment.spaceAround,
       children: [
         Image.asset(ImageAssets.SplashScreen),
         GenerlExceptionWidget(onPres: () {
           
         },),
         

         RoundButton(title: 'Round Button', height: 80, width: 200, onPress: () {
          
         }, textColor: Colors.white, buttonColor: AppColors.Purple,)
       ],
     ),
    );
  }
}