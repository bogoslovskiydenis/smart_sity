import 'package:flutter/material.dart';
import 'package:smart_sity/screens/information/information.dart';
import 'package:smart_sity/screens/qr/qr.dart';

import '../screens/home/homepage.dart';


class AppRouter {
  static Route? onGenerateRote(RouteSettings settings) {
    print('The Route is: ${settings.name}');

    switch (settings.name) {
      case '/':
        return HomeScreen.route();
      case InformationScreen.routeName:
        return InformationScreen.route();
      case Qr.routeName:
        return Qr.route();
      default:
        return _errorRoute();
    }
  }

  static Route _errorRoute() {
    return MaterialPageRoute(
      builder: (_) => Scaffold(appBar: AppBar(title: const Text('error'))),
      settings: const RouteSettings(name: '/error'),
    );
  }
}
