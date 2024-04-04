import 'package:flutter/material.dart';

final globalDarkTheme = ThemeData(
    //scaffoldBackgroundColor: const Color(0xff181d20),
    scaffoldBackgroundColor: Colors.black,
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: Color(0xff2f4959),
      foregroundColor: Color(0xffc5c8ca),
      //splashColor: Colors.orange,
      elevation: 10,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusDirectional.only(
              topStart: Radius.circular(16),
              topEnd: Radius.circular(8),
              bottomStart: Radius.circular(8),
              bottomEnd: Radius.circular(16))),
    ),
    popupMenuTheme: const PopupMenuThemeData(
        enableFeedback: true,
        elevation: 10,
        labelTextStyle:
            MaterialStatePropertyAll(TextStyle(color: Color(0xffc5c8ca))),
        color: Color(0xff181c1f),
        position: PopupMenuPosition.under,
        shadowColor: Colors.orange,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusDirectional.only(
                topStart: Radius.circular(30),
                topEnd: Radius.circular(10),
                bottomStart: Radius.circular(10),
                bottomEnd: Radius.circular(30)))),
    cardTheme: const CardTheme(
      color: Color(0xff202b31),
      elevation: 5,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusDirectional.only(
              topStart: Radius.circular(20),
              topEnd: Radius.circular(20),
              bottomStart: Radius.circular(20),
              bottomEnd: Radius.circular(20))),
      shadowColor: Colors.orangeAccent,
    ),
    appBarTheme: const AppBarTheme(
        shadowColor: Colors.orange,
        iconTheme: IconThemeData(
            color: Color(0xffc5c8ca),
            shadows: [Shadow(color: Colors.orange, blurRadius: 3)]),
        actionsIconTheme: IconThemeData(
            color: Color(0xffc5c8ca),
            shadows: [Shadow(color: Colors.orange, blurRadius: 3)]),
        elevation: 3,
        backgroundColor: Color(0xff181c1f), //
        titleTextStyle:
            TextStyle(color: Color.fromRGBO(255, 255, 255, 1), fontSize: 20)),
    textTheme: const TextTheme(
        titleMedium: TextStyle(
          fontSize: 16,
          color: Colors.orange,
          fontWeight: FontWeight.bold,
          overflow: TextOverflow.ellipsis,
        ),
        bodyLarge: TextStyle(
          color: Color(0xffc5c8ca),
          overflow: TextOverflow.ellipsis,
        ),
        labelMedium: TextStyle(
          fontSize: 15,
          color: Color.fromARGB(255, 172, 168, 168),
          overflow: TextOverflow.ellipsis,
        ),
        labelSmall: TextStyle(
          fontSize: 12,
          color: Color(0xffc5c8ca),
          overflow: TextOverflow.ellipsis,
        ),
        bodySmall: TextStyle(
          color: Color(0xffc5c8ca),
          overflow: TextOverflow.ellipsis,
        )),
    inputDecorationTheme: InputDecorationTheme(
      border: InputBorder.none,
      errorBorder: InputBorder.none,
      disabledBorder: InputBorder.none,
      focusedErrorBorder: InputBorder.none,
      activeIndicatorBorder: BorderSide.none,
      outlineBorder: BorderSide.none,
      focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Colors.orangeAccent,
          ),
          borderRadius: BorderRadius.circular(20)),
      enabledBorder: OutlineInputBorder(
          borderSide:
              const BorderSide(color: Color.fromARGB(255, 172, 168, 168)),
          borderRadius: BorderRadius.circular(20)),
      labelStyle: const TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
      hintStyle: const TextStyle(color: Color.fromARGB(255, 172, 168, 168)),
    ),
    textButtonTheme: const TextButtonThemeData(
        style: ButtonStyle(
      textStyle: MaterialStatePropertyAll(
          TextStyle(fontSize: 15, color: Color.fromARGB(255, 172, 168, 168))),
      shadowColor: MaterialStatePropertyAll(Colors.orange),
    )),
    outlinedButtonTheme: const OutlinedButtonThemeData(
      style: ButtonStyle(
          shadowColor: MaterialStatePropertyAll(Colors.orange),
          side: MaterialStatePropertyAll(BorderSide(color: Color(0xffc5c8ca)))),
    ));

/*
   1 - DARK[1c2428] & LIGHT[2F336]
   2 - DARK[191e22] & LIGHT[3487A5]
   3 - DARK[181C1F] & LIGHT[]
   4 - DARK[171E20] & LIGHT[EEF4F8]
   5 - DARK[2F4959] & LIGHT[62696D]
   6 - DARK[C5C8CA] & LIGHT[E9F0F6]
   7 - DARK[] & LIGHT[]
   8 - DARK[] & LIGHT[]
   */

//========================================================================================

final globalLightTheme = ThemeData(
    scaffoldBackgroundColor: Colors.white, //const Color(0xffeef4f8)
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: Color(0xff3487a5),
      foregroundColor: Colors.white,
      //splashColor: Colors.deepOrange,
      elevation: 10,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusDirectional.only(
              topStart: Radius.circular(16),
              topEnd: Radius.circular(8),
              bottomStart: Radius.circular(8),
              bottomEnd: Radius.circular(16))),
    ),
    popupMenuTheme: const PopupMenuThemeData(
        enableFeedback: true,
        elevation: 10,
        labelTextStyle:
            MaterialStatePropertyAll(TextStyle(color: Color(0xff2f3336))),
        color: Colors.white,
        position: PopupMenuPosition.under,
        shadowColor: Colors.orange,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusDirectional.only(
                topStart: Radius.circular(30),
                topEnd: Radius.circular(10),
                bottomStart: Radius.circular(10),
                bottomEnd: Radius.circular(30)))),
    cardTheme: const CardTheme(
      color: Color(0xffe9f0f6),
      elevation: 5,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusDirectional.only(
              topStart: Radius.circular(20),
              topEnd: Radius.circular(20),
              bottomStart: Radius.circular(20),
              bottomEnd: Radius.circular(20))),
      shadowColor: Colors.orange,
    ),
    appBarTheme: const AppBarTheme(
        shadowColor: Colors.orange,
        iconTheme: IconThemeData(
            color: Colors.white,
            shadows: [Shadow(color: Colors.orange, blurRadius: 3)]),
        actionsIconTheme: IconThemeData(
            color: Colors.white,
            shadows: [Shadow(color: Colors.orange, blurRadius: 3)]),
        elevation: 3,
        backgroundColor: Color(0xff3487a5),
        titleTextStyle:
            TextStyle(color: Color.fromRGBO(255, 255, 255, 1), fontSize: 20)),
    textTheme: const TextTheme(
      bodyLarge: TextStyle(
        color: Colors.black,
        overflow: TextOverflow.ellipsis,
      ),
      labelMedium: TextStyle(
        fontSize: 15,
        color: Colors.black,
        overflow: TextOverflow.ellipsis,
      ),
      labelSmall: TextStyle(
        fontSize: 12,
        color: Colors.black,
        overflow: TextOverflow.ellipsis,
      ),
      titleMedium: TextStyle(
        fontSize: 16,
        color: Colors.orange,
        fontWeight: FontWeight.bold,
        overflow: TextOverflow.ellipsis,
      ),
      bodySmall: TextStyle(
        color: Colors.black,
        overflow: TextOverflow.ellipsis,
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      border: InputBorder.none,
      errorBorder: InputBorder.none,
      disabledBorder: InputBorder.none,
      focusedErrorBorder: InputBorder.none,
      activeIndicatorBorder: BorderSide.none,
      outlineBorder: BorderSide.none,
      focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Colors.orangeAccent,
          ),
          borderRadius: BorderRadius.circular(20)),
      enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Color.fromARGB(255, 87, 90, 92)),
          borderRadius: BorderRadius.circular(20)),
      labelStyle: const TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
      hintStyle: const TextStyle(color: Color.fromARGB(255, 172, 168, 168)),
    ),
    outlinedButtonTheme: const OutlinedButtonThemeData(
      style: ButtonStyle(
          shadowColor: MaterialStatePropertyAll(Colors.orange),
          iconColor: MaterialStatePropertyAll(Color(0xff2f3336)),
          side: MaterialStatePropertyAll(BorderSide(color: Color(0xff2f3336)))),
    ));
