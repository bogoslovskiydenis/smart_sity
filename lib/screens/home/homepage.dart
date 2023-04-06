import 'package:flutter/material.dart';

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
      appBar: AppBar(
        leading: const Icon(Icons.menu),
        title: Text(
          "SmartCity",
          style: Theme.of(context).textTheme.headline5,
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              (Icons.qr_code),
            ),
          ),
        ],
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(56),
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
                fillColor: Colors.white
              ),
            ),
          ),
        ),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: Center(
        child: SizedBox(
          height: 30,
        ),
      ),
    );
  }
}
