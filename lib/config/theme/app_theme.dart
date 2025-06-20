import 'package:flutter/material.dart';

ThemeData appTheme() {
  return ThemeData(
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: const AppBarTheme(
      elevation: 0,
      scrolledUnderElevation: 0,
    ),
  );
}
