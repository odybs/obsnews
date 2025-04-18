import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:obsnews/data/constant/colorconfig.dart';

class ThemeCubit extends Cubit<ThemeData> {
  /// {@macro brightness_cubit}
  ThemeCubit() : super(_lightTheme);

  static final _lightTheme = ThemeData(
    brightness: Brightness.light,
    primarySwatch: Colors.blue,
    colorScheme: const ColorScheme.light(
      primary: Colors.blue,
      onPrimary: Colors.white,
    ),
    // TextTheme
    textTheme: TextTheme(
      bodyLarge: TextStyle(color: AppColorConfig.black),
      bodyMedium: TextStyle(color: AppColorConfig.black),
      bodySmall: TextStyle(color: AppColorConfig.black),
    ),
    fontFamily: GoogleFonts.poppins().fontFamily,
    // Form
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: AppColorConfig.white,
      hintStyle: TextStyle(color: AppColorConfig.blackblur),
      labelStyle: TextStyle(color: AppColorConfig.blackblur),
      errorStyle: TextStyle(color: AppColorConfig.deepCarminePink),
      activeIndicatorBorder: BorderSide(
        color: AppColorConfig.lightGrey,
        width: 1.0,
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: BorderSide(
          color: AppColorConfig.deepCarminePink,
        ),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: BorderSide(
          color: AppColorConfig.lightGrey,
        ),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: BorderSide(
          color: AppColorConfig.lightGrey,
        ),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: BorderSide(
          color: AppColorConfig.deepCarminePink,
        ),
      ),
    ),
    // Button
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        side: const BorderSide(
          color: Colors.black,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        padding: const EdgeInsets.symmetric(
          vertical: 15,
          horizontal: 20,
        ),
        fixedSize: const Size(500, 50),
      ),
    ),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        foregroundColor: Colors.blue,       // warna teks
      ),
    ),
  );

  static final _darkTheme = ThemeData(
    brightness: Brightness.dark,
    primarySwatch: Colors.deepPurple,
    colorScheme: const ColorScheme.dark(
      primary: Colors.deepPurple,
      onPrimary: Colors.white,
    ),
    // TextTheme
    textTheme: TextTheme(
      bodyLarge: TextStyle(color: AppColorConfig.lightGrey),
      bodyMedium: TextStyle(color: AppColorConfig.lightGrey),
      bodySmall: TextStyle(color: AppColorConfig.lightGrey),
    ),
    fontFamily: GoogleFonts.poppins().fontFamily,
    // Form
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: AppColorConfig.lightGrey,
      hintStyle: TextStyle(color: AppColorConfig.blackblur),
      labelStyle: TextStyle(color: AppColorConfig.blackblur),
      errorStyle: TextStyle(color: AppColorConfig.deepCarminePink),
      activeIndicatorBorder: BorderSide(
        color: AppColorConfig.lightGrey,
        width: 1.0,
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: BorderSide(
          color: AppColorConfig.deepCarminePink,
        ),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: BorderSide(
          color: AppColorConfig.lightGrey,
        ),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: BorderSide(
          color: AppColorConfig.lightGrey,
        ),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: BorderSide(
          color: AppColorConfig.deepCarminePink,
        ),
      ),
    ),
    // Button
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.black,
        foregroundColor: AppColorConfig.lightGrey,
        side: BorderSide(
          color: AppColorConfig.lightGrey,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        padding: const EdgeInsets.symmetric(
          vertical: 15,
          horizontal: 20,
        ),
        fixedSize: const Size(500, 50),
      ),
    ),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        foregroundColor: Colors.deepPurple,
      ),
    ),
  );

  /// Toggles the current brightness between light and dark.
  void toggleTheme() {
    emit(state.brightness == Brightness.dark
     ? _lightTheme 
     : _darkTheme);
  }
}
