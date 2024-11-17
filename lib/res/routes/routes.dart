import 'package:get/get.dart';
import 'package:getx_mvvmmvc/Views/splash_screen.dart';
import 'package:getx_mvvmmvc/res/routes/routes_name.dart';

class AppRoutes{
  static appRoutes() =>[
    GetPage(
      name: RoutesName.splashscreen,
       page: () => const SplashScreen(),
       transition: Transition. leftToRight,
       transitionDuration: const Duration(milliseconds: 250)
       ),

  ];
}