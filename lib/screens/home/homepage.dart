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
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      drawer: Drawer(),

      appBar: CustomAppBar(
        text:  Text("Smart City" ,style: Theme.of(context).textTheme.headline5,),
        ledings: const Icon(Icons.menu),
        iconButton: IconButton(
          onPressed: () => Navigator.pushNamed(context, '/qr'),
          icon: const Icon
            (Icons.qr_code),),
        preferredSize: Size(0,110),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: TextField(
            decoration: InputDecoration(
                hintText: "Search attraction",
                prefixIcon: const Icon(Icons.search),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12.0),
                    borderSide: BorderSide.none),
                contentPadding: EdgeInsets.zero,
                filled: true,
                fillColor: Colors.white),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                    top: 20, left: 20, right: 20, bottom: 20),
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(children: const [
                    CardItem(
                      text:
                          'The national park is situated in the heart of ancient Ashkelon. It is surrounded by a wall built in the mid-12th century by the Fatimid Caliphate.',
                      imagePath: 'assets/askpark.png',
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    CardItem(
                      text:
                          'Sea Park was developed as a vivid public space on the waterfront, which includes recreation areas, unique extreme sports attractions, special playgrounds and restaurants.',
                      imagePath: 'assets/seaP.png',
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    CardItem(
                      text:
                          'Marina Ashkelon is one of the most advanced and beautiful marinas in Israel, and a southern gateway to the Mediterranean Sea.',
                      imagePath: 'assets/marina.png',
                    )
                  ]),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
