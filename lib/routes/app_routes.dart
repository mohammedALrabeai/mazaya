import 'package:flutter/material.dart';
import '../presentation/about/about_screen.dart';
import '../presentation/app_navigation_screen/app_navigation_screen.dart';
import '../presentation/k0_screen/k0_screen.dart';
import '../presentation/k1_screen/k1_screen.dart';
import '../presentation/k2_screen/k2_screen.dart';
import '../presentation/k5_screen/k5_screen.dart';
import '../presentation/k6_screen/k6_screen.dart';
import '../presentation/k7_screen/k7_screen.dart';
import '../presentation/k8_screen/k8_screen.dart';
import '../presentation/offers/create_offer.dart';
import '../presentation/one_screen/one_screen.dart';
import '../presentation/tow_screen/tow_screen.dart';

// ignore_for_file: must_be_immutable
class AppRoutes {
  static const String k0Screen = '/k0_screen';

  static const String k1Screen = '/k1_screen';

  static const String k2Screen = '/k2_screen';

  static const String towScreen = '/tow_screen';

  static const String oneScreen = '/one_screen';

  static const String k5Screen = '/k5_screen';

  static const String k6Screen = '/k6_screen';

  static const String k7Screen = '/k7_screen';

  static const String k8Screen = '/k8_screen';
  static const String creatOfferScreen = '/creatOfferScreen';
  static const String aboutScreen = '/aboutScreen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> routes = {
    k0Screen: (context) => K0Screen(),
    k1Screen: (context) => K1Screen(),
    k2Screen: (context) => K2Screen(),
    towScreen: (context) => TowScreen(),
    oneScreen: (context) => OneScreen(),
    k5Screen: (context) => K5Screen(),
    k6Screen: (context) => K6Screen(),
    k7Screen: (context) => K7Screen(),
    k8Screen: (context) => K8Screen(),
    creatOfferScreen: (context) => CreatOfferScreen(),
    aboutScreen: (context) => AboutScreen(),
    appNavigationScreen: (context) => AppNavigationScreen(),
    initialRoute: (context) => OneScreen()
  };
}
