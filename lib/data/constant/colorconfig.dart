import 'package:flutter/material.dart';

class AppColorConfig {
  AppColorConfig._();

  static MaterialColor primary = const MaterialColor(
    _primary,
    <int, Color>{
      50: Color(0xFFAADCD2),
      100: Color(0xFFA2D9CE),
      200: Color(0xFF99D5C9),
      300: Color(0xFF8FD1C4),
      400: Color(0xFF84CCBE),
      500: Color(0xFF78C7B8),
      600: Color(0xFF6BC1B1),
      700: Color(0xFF61AFA1),
      800: Color(0xFF589F92),
      900: Color(0xFF509185),
    },
  );

  static MaterialColor secondary = const MaterialColor(
    _secondary,
    <int, Color>{
      50: Color(0xFF92B3C0),
      100: Color(0xFF87ABBA),
      200: Color(0xFF7BA3B3),
      300: Color(0xFF6E9AAB),
      400: Color(0xFF5F90A3),
      500: Color(0xFF4F859A),
      600: Color(0xFF3d7990),
      700: Color(0xFF376E83),
      800: Color(0xFF326477),
      900: Color(0xFF2D5B6C),
    },
  );

  static const int _primary = 0xFF6BC1B1;
  // static const int _primaryColorValue = 0xFF00A2E9;
  static const int _secondary = 0xFF3d7990;

  static Color maroon = const Color(0xFF7f0001);
  static Color darkCandyAppleRed = const Color(0xFFA10000);
  static Color white = const Color(0xFFffffff);
  static Color whiteGrey = const Color(0xFFededed);
  static Color lightGrey = const Color(0xFFD8D8D8);
  static Color green = const Color(0xFF01A857);
  static Color aureolin = const Color(0xFFFCEE10);
  static Color deepCarminePink = const Color(0xFFE63235);
  static Color princetonOrange = const Color(0xFFFB842A);
  static Color fuzzyWuzzy = const Color(0xFFce6e6f);
  static const Color subtitle = Color.fromARGB(255, 86, 86, 86);
  static Color black = const Color(0xFF000000);
  static Color blackblur = const Color(0x99444444);
  static Color bondiBlue = const Color(0xFF0093ba);
  static Color grey = Colors.grey;
  static Color greyblur = const Color(0xFFe7f9fd);
  static Color transparent = const Color.fromARGB(0, 231, 249, 253);
  static Color blue = const Color.fromARGB(167, 148, 216, 255);

  static MaterialColor lightgrey = const MaterialColor(
    _lightgrey,
    <int, Color>{
      50: Color(0xFFe7f9fd),
      100: Color(0xFFe7f9fd),
      200: Color(0xFFe7f9fd),
      300: Color(0xFFe7f9fd),
      400: Color(0xFFe7f9fd),
      500: Color(0xFFe7f9fd),
      600: Color(0xFFe7f9fd),
      700: Color(0xFFe7f9fd),
      800: Color(0xFFe7f9fd),
      900: Color(0xFFe7f9fd),
    },
  );
  static const int _lightgrey = 0xFFe7f9fd;
}
