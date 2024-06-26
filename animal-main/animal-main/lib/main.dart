import 'package:flutter/material.dart';
import 'package:mobile_development_assignment/main_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Material App',
      home: MainScreen(),
    );
  }
}
