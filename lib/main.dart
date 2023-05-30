import 'package:flutter/material.dart';
import 'package:marketplace/features/landing/views/landing_screen.dart';

void main() {
  runApp(const TokosmileApp());
}

class TokosmileApp extends StatelessWidget {
  const TokosmileApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tokosmile',
      theme: ThemeData(primarySwatch: Colors.grey, fontFamily: 'Verdana'),
      home: const LandingScreen(),
    );
  }
}
