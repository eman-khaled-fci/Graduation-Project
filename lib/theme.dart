

import 'package:flutter/material.dart';

import 'constants.dart';

ThemeData theme (){
  return ThemeData(
    scaffoldBackgroundColor: Colors.white,
    fontFamily: "Muli",
    appBarTheme: appBarTheme(),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(backgroundColor: Colors.white),
    inputDecorationTheme: inputDecorationTheme(),
    textTheme: textTheme() ,
    visualDensity: VisualDensity.adaptivePlatformDensity,

  );
}

InputDecorationTheme inputDecorationTheme() {
  OutlineInputBorder outlineInputBorder = OutlineInputBorder(
      borderRadius: BorderRadius.circular(28),
      borderSide: BorderSide(color: kTextColor),
      gapPadding:10,
    );
  return InputDecorationTheme(
    contentPadding: EdgeInsets.symmetric(
      horizontal: 42,
      vertical: 20,
    ),
    enabledBorder: outlineInputBorder,
    focusedBorder:outlineInputBorder ,
    border: outlineInputBorder,

  );
}

AppBarTheme appBarTheme() {
  return AppBarTheme(
    centerTitle: true,
    color: Colors.white,
    elevation: 0,
    brightness: Brightness.light,
    iconTheme: IconThemeData(color: Colors.black), toolbarTextStyle: TextTheme(headline6: TextStyle(color: Color(0XFF8B8B8B),fontSize: 18)


    ).bodyText2, titleTextStyle: TextTheme(headline6: TextStyle(color: Color(0XFF8B8B8B),fontSize: 18)


    ).headline6,



  );
}

TextTheme textTheme() {
  return TextTheme(
      bodyText1: TextStyle(color: kTextColor),
      bodyText2: TextStyle(color: kTextColor));
}
