import 'package:book_app_tapped/utils/constants/color_constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData get lightTheme {
  return ThemeData(
    textTheme: GoogleFonts.rubikTextTheme(lightTextTheme),
    colorScheme: lightColorScheme,
    scaffoldBackgroundColor: Colors.white,
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: Color.fromRGBO(245, 249, 247, 0.7),
    ),
    appBarTheme: const AppBarTheme(backgroundColor: Colors.white),
  );
}

ColorScheme get lightColorScheme {
  return ColorScheme(
    brightness: Brightness.light,
    primary: Colors.black,
    onPrimary: Colors.white,
    secondary: ColorConstants.booklyPurple,
    onSecondary: Colors.white,
    error: const Color.fromARGB(206, 255, 55, 40),
    onError: Colors.white,
    background: const Color.fromARGB(255, 255, 255, 255),
    onBackground: const Color.fromARGB(255, 47, 46, 46),
    shadow: const Color.fromARGB(79, 213, 203, 203),
    surface: const Color.fromARGB(255, 246, 244, 246),
    tertiaryContainer: const Color.fromARGB(255, 163, 193, 193),
    onSurface: Colors.black,
  );
}

TextTheme get lightTextTheme {
  return const TextTheme(
    //Search Bar
    titleMedium: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w400,
      color: Colors.black,
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
      color: Color.fromRGBO(24, 26, 25, 1),
    ),

    //Body
    bodyLarge: TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w400,
      color: Color.fromRGBO(24, 26, 25, 1),
    ),
    bodyMedium: TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w400,
      color: Color.fromRGBO(38, 61, 54, 1),
    ),
    bodySmall: TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w400,
      color: Color.fromRGBO(38, 61, 54, 1),
    ),
  );
}
