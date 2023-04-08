import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget with PreferredSizeWidget {
  const CustomAppBar({
    Key? key,
    this.text ,
    required this.child,
    required this.ledings,
    this.action =true, required this.iconButton, required this.preferredSize,
  }) : super(key: key);
  final Widget? text;
  final Widget child;
  final Widget? ledings;
  final bool  action;
  final IconButton iconButton;
  final Size preferredSize;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: ledings,
          title: text,
        actions: action ? [
          iconButton
        ] : null ,
        bottom: PreferredSize(preferredSize: preferredSize, child: child),
        backgroundColor: Theme.of(context).primaryColor,
      ),
    );
  }
}
