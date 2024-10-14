import 'package:flutter/material.dart';
import 'package:latihan_api2/screen/HomePage.dart';

void main () {
  runApp (const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Homepage(),
    );
  }
}