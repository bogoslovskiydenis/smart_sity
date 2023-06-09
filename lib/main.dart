import 'package:flutter/material.dart';
import 'package:smart_sity/routing/routing.dart';
import 'package:smart_sity/screens/home/homepage.dart';
import 'package:smart_sity/theme/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: theme(),
      onGenerateRoute: AppRouter.onGenerateRote,
      initialRoute: HomeScreen.routeName,
    );
  }
}
