import 'package:flutter/material.dart';
import 'package:smart_sity/screens/home/widget/custom_app_bar.dart';


class Qr extends StatelessWidget implements PreferredSizeWidget {
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
      appBar: CustomAppBar(
        preferredSize: Size(0,50),
        text:  Text("Qr" ,style: Theme.of(context).textTheme.headline2,),
        ledings: BackButton(),
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
  Size get preferredSize => Size(0,0);
}
