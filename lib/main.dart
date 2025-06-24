import 'package:e_cook/Pages/splash_screen.dart';
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
      theme: ThemeData(
        fontFamily: 'Poppins', // Font globale du projet
        scaffoldBackgroundColor: Colors.white,
      ),
      // title: 'Flutter Demo',
      color: Colors.white,
      home: SlpashScreen(),
    );
  }
}
