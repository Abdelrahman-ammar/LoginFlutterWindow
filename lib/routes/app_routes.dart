import 'package:flutter/material.dart';
import 'package:abdelrahman_s_application2/presentation/iphone_13_mini_four_screen/iphone_13_mini_four_screen.dart';

class AppRoutes {
  static const String iphone13MiniFourScreen = '/iphone_13_mini_four_screen';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> get routes => {
        iphone13MiniFourScreen: Iphone13MiniFourScreen.builder,
        initialRoute: Iphone13MiniFourScreen.builder
      };
}
