import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget with PreferredSizeWidget{
  const CustomAppBar({
    Key? key, required this.preferredSize, required this.text,  required this.child,
  }) :  super(key: key);
  final Size preferredSize;
  final String text;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.menu),
        title: Text(
          text,
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
          preferredSize: preferredSize,
          child: child
        ),
        backgroundColor: Theme.of(context).primaryColor,
      ),
    );
  }
}
