import 'package:flutter/material.dart';

class TTextTheme {
  TTextTheme._();

  static final TextTheme lightTextTheme = TextTheme(
    headlineLarge: const TextStyle().copyWith(fontSize: 32.0, fontWeight: FontWeight.bold, color: Colors.black87),
    headlineMedium: const TextStyle().copyWith(fontSize: 24.0, fontWeight: FontWeight.bold, color: Colors.black87),
    headlineSmall: const TextStyle().copyWith(fontSize: 16.0, fontWeight: FontWeight.bold, color: Colors.black87),
    
    bodyLarge: const TextStyle().copyWith(fontSize: 16.0, color: Colors.black87),
    bodyMedium: const TextStyle().copyWith(fontSize: 14.0, color: Colors.black87),
    bodySmall: const TextStyle().copyWith(fontSize: 12.0, color: Colors.black87),
  );
  static final TextTheme darkTextTheme = TextTheme(
    headlineLarge: const TextStyle().copyWith(fontSize: 32.0, fontWeight: FontWeight.bold, color: Colors.white),
    headlineMedium: const TextStyle().copyWith(fontSize: 24.0, fontWeight: FontWeight.bold, color: Colors.white),
    headlineSmall: const TextStyle().copyWith(fontSize: 16.0, fontWeight: FontWeight.bold, color: Colors.white),

    bodyLarge: const TextStyle().copyWith(fontSize: 16.0, color: Colors.white),
    bodyMedium: const TextStyle().copyWith(fontSize: 14.0, color: Colors.white),
    bodySmall: const TextStyle().copyWith(fontSize: 12.0, color: Colors.white),
  );
}