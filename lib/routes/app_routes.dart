import 'package:flutter/material.dart';
import 'package:gurugranth/coming_soon/coming_soon.dart';
import 'package:gurugranth/view/guruarul_category/guruarul_category.dart';
import 'package:gurugranth/view/home_screen/home_screen.dart';
import 'package:gurugranth/view/krithi_category.dart/krithi_category_page.dart';

import 'package:gurugranth/view/splash_screen/splash_screen.dart';

class AppRoutes {
  static const String splahScreen = "/splashscreen";
  static const String homeScreen = "/homescreen";
  static const String krithiCategoryPage = "/krithicategorypage";
  static const String guruArulCategoryPage = "/guruarulcategorypage";
  static const String commingSoon = "/commingsoon";

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case splahScreen:
        return MaterialPageRoute(builder: (_) => const SplashScreen());

      case homeScreen:
        return MaterialPageRoute(builder: (_) => const HomeScreen());

      case krithiCategoryPage:
        return MaterialPageRoute(builder: (_) => const KrithiCategoryPage());

      case guruArulCategoryPage:
        return MaterialPageRoute(builder: (_) => const GuruarulCategory());

      case commingSoon:
        return MaterialPageRoute(builder: (_) => const ComingSoon());

      default:
        return MaterialPageRoute(
            builder: (context) => Scaffold(
                    body: Center(
                  child: Text('No route defined for ${settings.name}'),
                )));
    }
  }
}
