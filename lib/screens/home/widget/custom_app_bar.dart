import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget with PreferredSizeWidget {
  const CustomAppBar({
    Key? key,
    this.text = '',
    required this.child,
    required this.ledings,
    this.action =true, required this.iconButton, required this.preferredSize,
  }) : super(key: key);
  final String text;
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
          title: Text(
        text,
        style: Theme.of(context).textTheme.headline5,
      ),
        actions: action ? [
          iconButton
        ] : null ,
        bottom: PreferredSize(preferredSize: Size(0,100), child: child),
        backgroundColor: Theme.of(context).primaryColor,
      ),
    );
  }

  // @override
  // // TODO: implement preferredSize
  // Size get preferredSize => Size(0, 110);
}
