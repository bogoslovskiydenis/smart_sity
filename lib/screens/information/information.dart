import 'package:flutter/material.dart';
import 'package:smart_sity/screens/home/widget/custom_app_bar.dart';


class InformationScreen extends StatelessWidget implements PreferredSizeWidget {
  const InformationScreen({Key? key}) : super(key: key);
  static const String routeName = '/information';

  static Route route() {
    return MaterialPageRoute(
      settings: const RouteSettings(name: routeName),
      builder: (context) => const InformationScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        preferredSize: Size(0,50),
        text: 'Qr',
        ledings: const BackButton(),
        iconButton: IconButton(icon: Icon(Icons.more_horiz), onPressed:(){} ),
        child: Text("data"),
      ),
      body: (Container(
        height: 1000,
        color: Colors.orange,
      )),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size(0,100);
}
