

import 'package:cocktail_app/screens/screens.dart';
import 'package:flutter/material.dart';

class AppRoutes {

  static String initialRoute = 'home';

  static Map<String, Widget Function(BuildContext)> routes(){
    Map<String, Widget Function(BuildContext)> routesList = {
      'home' : (_) => HomeScreen()
    };

    return routesList;
  }

}