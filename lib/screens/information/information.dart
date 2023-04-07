import 'package:flutter/material.dart';
import 'package:smart_sity/screens/home/widget/custom_app_bar.dart';

class InformationScreen extends StatelessWidget with PreferredSizeWidget {
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
    return const Scaffold(
      appBar: CustomAppBar(
        text: 'Ashkelon National Park',
       
        // color: TextStyle(
        //   color: Colors.white,
        // ),
        // icon: Icon(
        //   (Icons.more_horiz),
        // ),
        // leading: Icon(Icons.arrow_back_ios_new),
        preferredSize: Size(0, 50), child: Text("data"),

      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => throw UnimplementedError();
}
