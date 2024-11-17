import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:getx_mvvmmvc/Views/splash_screen.dart';
import 'package:getx_mvvmmvc/res/getx_localization/languages.dart';
import 'package:getx_mvvmmvc/res/routes/routes.dart';

void main() {
  
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      translations: Languages(),
      locale: const Locale('en','US'),
      fallbackLocale:const Locale('en','US') ,
      home: const SplashScreen(),
      getPages: AppRoutes.appRoutes(),
    );
  }
}

