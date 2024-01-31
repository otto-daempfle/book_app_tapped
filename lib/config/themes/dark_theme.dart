import 'package:book_app_tapped/utils/constants/color_constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData get darkTheme {
  return ThemeData(
    textTheme: GoogleFonts.rubikTextTheme(darkTextTheme),
    colorScheme: darkColorTheme,
    scaffoldBackgroundColor: Colors.black,
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: Color.fromRGBO(26, 26, 26, 0.694),
    ),
    appBarTheme: const AppBarTheme(backgroundColor: Colors.black),
  );
}

ColorScheme get darkColorTheme {
  return ColorScheme(
    brightness: Brightness.dark,
    primary: Colors.white,
    onPrimary: Colors.black,
    secondary: ColorConstants.booklyPurple,
    onSecondary: Colors.white,
    error: const Color.fromARGB(206, 255, 55, 40),
    onError: Colors.white,
    background: Colors.black,
    onBackground: Colors.black54,
    shadow: const Color.fromARGB(79, 75, 75, 75),
    surface: const Color.fromARGB(155, 59, 59, 59),
    tertiaryContainer: const Color.fromARGB(255, 115, 124, 124),
    onSurface: Colors.black,
  );
}

TextTheme get darkTextTheme {
  return const TextTheme(
    //Search Bar
    titleMedium: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w400,
      color: Colors.white,
    ),

    //Section Titles
    titleSmall: TextStyle(
      fontSize: 15,
      fontWeight: FontWeight.w700,
      color: Color.fromRGBO(91, 94, 166, 1),
    ),

    //Bottom Bar Label
    labelMedium: TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w400,
      color: Color.fromRGBO(91, 94, 166, 1),
    ),

    labelSmall: TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w400,
      color: Color.fromRGBO(226, 227, 227, 1),
    ),

    //Body
    bodyLarge: TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w400,
      color: Color.fromRGBO(214, 226, 220, 1),
    ),
    bodyMedium: TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w400,
      color: Color.fromRGBO(167, 204, 193, 1),
    ),
    bodySmall: TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w400,
      color: Color.fromRGBO(204, 213, 210, 1),
    ),
  );
}
