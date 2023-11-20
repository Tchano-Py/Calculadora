import 'package:calculadora/src/calc_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutterando - Calculadora',
      themeMode: ThemeMode.light,
      darkTheme: ThemeData.dark(
        useMaterial3: true,
      ),
      theme: ThemeData( 
        useMaterial3: true,
      ),
      home: const CalcPage(),
    );
  }
} 