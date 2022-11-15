import 'package:flutter/material.dart';
import 'package:steckbrief_app/screens/ab_in_den_urlaub_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Steckbrief App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: AbInDenUrlaubScreen(),
    );
  }
}
