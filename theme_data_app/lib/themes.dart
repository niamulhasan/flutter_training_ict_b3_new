import 'package:flutter/material.dart';

class MyTheme {
  ThemeData? darkBlue = ThemeData.dark().copyWith(
    appBarTheme: AppBarTheme(backgroundColor: Colors.blue.shade900),
    cardColor: Colors.blue.shade900,
    backgroundColor: Colors.blue.shade700,
  );
  ThemeData? lightBlue = ThemeData.light().copyWith(
    appBarTheme: AppBarTheme(backgroundColor: Colors.blue.shade600),
    cardColor: Colors.blue.shade600,
    backgroundColor: Colors.blue.shade400,
  );
}
