import 'package:flutter/material.dart';
import 'package:smart_sity/screens/home/widget/custom_app_bar.dart';
import 'package:smart_sity/screens/information/widget/card_info.dart';
import 'package:smart_sity/screens/information/widget/newsEvent/news_event.dart';
import 'package:smart_sity/screens/information/widget/reviews/reviews.dart';

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
          preferredSize: const Size(0, 50),
          text: Text(
            "Ashkelon National Park",
            style: Theme
                .of(context)
                .textTheme
                .headline2,
          ),
          ledings: const BackButton(),
          iconButton:
          IconButton(icon: const Icon(Icons.more_horiz), onPressed: () {}),
          child: const Text("data"),
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Center(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: (
                  Column(
                    children:  [
                      CardInfo(
                          text: "Ashkelon National Park", imagePath: "imagePath"),
                      NewsEvent(),
                      Reviews(imagePath: '',),

                    ],
                  )
              ),
            ),
          ),
        ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size(0, 100);
}
