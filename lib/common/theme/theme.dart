import 'package:flutter/material.dart';

class Themes {
  static final lightTheme = ThemeData(
      useMaterial3: true,
      appBarTheme: const AppBarTheme(
        backgroundColor: Colors.green,
      ),
      // primaryColor: Colors.green.shade400,
      tabBarTheme: const TabBarTheme(
        labelColor: Colors.white,
      ),
      colorScheme: const ColorScheme.light(
        primary: Colors.green,
      ));
  static final darkTheme = ThemeData(
    useMaterial3: true,
    scaffoldBackgroundColor: Colors.black12,
    textTheme: const TextTheme(
      labelMedium: TextStyle(
        color: Colors.white,
      ),
      titleMedium: TextStyle(
        color: Colors.white,
      ),
      bodySmall: TextStyle(
        color: Colors.white,
      ),
      bodyMedium: TextStyle(
        color: Colors.white,
      ),
    ),
    tabBarTheme: const TabBarTheme(
        unselectedLabelColor: Colors.white,
        labelColor: Colors.green,
        indicatorColor: Colors.green),
    appBarTheme: const AppBarTheme(
        iconTheme: IconThemeData(color: Colors.white),
        //  toolbarTextStyle: TextStyle(color: Colors.red),

        //titleTextStyle: TextStyle(color: Colors.white, fontSize: 18),
        backgroundColor: Color.fromARGB(255, 18, 17, 17)),
  );
}
