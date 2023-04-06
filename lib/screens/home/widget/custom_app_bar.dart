import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget with PreferredSizeWidget {
  const CustomAppBar({Key? key, required this.title, this.action = true})
      : super(key: key);
  final String title;
  final bool action;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        centerTitle: false,
        automaticallyImplyLeading: false,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [

            Expanded(
              flex: 2,
              child: Text( "SmartCity",
                style: TextStyle(color: Colors.orange),

              ),
            )
          ],
        ),
        actions: action
            ? [
          IconButton(
              onPressed: () {
                Navigator.pushNamed(context, '/profile');
              },
              icon: Icon(
                Icons.person,
                color: Colors.white
              )),
        ]
            : null,
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(50.0);
}
