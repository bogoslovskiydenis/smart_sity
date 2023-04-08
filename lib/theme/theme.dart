import 'package:flutter/material.dart';

ThemeData theme() {
  return ThemeData(
    //20, 33, 61
    //229, 229, 229
      primaryColor:  const Color(0xFF14213D),
      scaffoldBackgroundColor: const Color(0xffE5E5E5),
      backgroundColor: Colors.white,
      dialogBackgroundColor: const Color(0xFFCCCED7),
      fontFamily: 'Regular',
      colorScheme:
      ColorScheme.fromSwatch().copyWith(secondary: const Color(0xFFD71B1B)),
      textTheme: const TextTheme(
          // 251, 163, 17
        headline5: TextStyle(
            color: Color(0xFAFBA311),
            fontWeight: FontWeight.bold,
            fontSize: 24
        ),
        headline2: TextStyle(
            color: Colors.white,
            fontSize: 16
        ),
        headline3: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.normal,
            fontSize: 20
        ),
        headline4: TextStyle(
            color: Color(0xFF282E4A),
            fontWeight: FontWeight.bold,
            fontSize: 14
        ),
        headline6: TextStyle(
          color: Color(0xFF2B2E4A),
          fontWeight: FontWeight.normal,
          fontSize: 14,
        ),
        bodyText1: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.normal,
          fontSize: 12,
        ),
        bodyText2: TextStyle(
          color: Color(0xFF2B2E4A),
          fontWeight: FontWeight.normal,
          fontSize: 10,
        ),
      )
  );

}
