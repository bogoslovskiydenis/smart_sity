import 'package:flutter/material.dart';
import 'package:smart_sity/screens/home/widget/custom_app_bar.dart';

import '../home/homepage.dart';

class Qr extends StatelessWidget with PreferredSizeWidget {
  const Qr({Key? key}) : super(key: key);
  static const String routeName = '/qr';

  static Route route() {
    return MaterialPageRoute(
      settings: const RouteSettings(name: routeName),
      builder: (context) => const Qr(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(56),
        child: GestureDetector(
          child: const CustomAppBar(
            preferredSize: Size(0, 50), text: 'Qr',
            child: Text("data"),
          ),
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return HomeScreen();
            }));
          },
        ),
      ),
      body: (Container(
        height: 1000,
        color: Colors.orange,
      )),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => throw UnimplementedError();
}
