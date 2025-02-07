import 'package:flutter/material.dart';
import 'screens/starting_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dining Management',
      debugShowCheckedModeBanner: false, // Removes the debug banner
      theme: ThemeData.light(), // Light theme
      home: const StartingPage(),
    );
  }
}