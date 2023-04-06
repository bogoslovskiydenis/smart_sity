import 'package:flutter/material.dart';
import 'package:smart_sity/screens/home/widget/custom_app_bar.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);
  static const String routeName = '/';

  static Route route() {
    return MaterialPageRoute(
      settings: const RouteSettings(name: routeName),
      builder: (context) => const HomeScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar:  CustomAppBar(title: 'SmartCity',),
    );
  }

}
