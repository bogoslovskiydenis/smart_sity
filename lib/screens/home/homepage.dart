import 'package:flutter/material.dart';
import 'package:smart_sity/screens/home/widget/card_item.dart';
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
    return Scaffold(
      appBar: const CustomAppBar(preferredSize: Size(0, 110)),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
              child: Column(children: [
                CardItem(),

              ]),
            ),
          ],
        ),
      ),
    );
  }
}
