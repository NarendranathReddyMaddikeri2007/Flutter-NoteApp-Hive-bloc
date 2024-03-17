import 'package:flutter/material.dart';

final Color? primaryBGColor = Colors.yellow[800];
const Color primaryOverlay = Colors.white;
Map<int, Color> _color = const {
  50: Color.fromRGBO(249, 168, 37, 1),
  100: Color.fromRGBO(249, 168, 37, 2),
  200: Color.fromRGBO(249, 168, 37, .3),
  300: Color.fromRGBO(249, 168, 37, .4),
  400: Color.fromRGBO(249, 168, 37, .5),
  500: Color.fromRGBO(249, 168, 37, .6),
  600: Color.fromRGBO(249, 168, 37, .7),
  700: Color.fromRGBO(249, 168, 37, .8),
  800: Color.fromRGBO(249, 168, 37, .9),
  900: Color.fromRGBO(249, 168, 37, 1),
};
final MaterialColor primaryMaterialColor = MaterialColor(0xFFF9A825, _color);
