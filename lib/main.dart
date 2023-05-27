import 'package:flutter/material.dart';
import 'package:marketplace/views/home/pages/home_screen.dart';

void main() {
  runApp(const TokosmileApp());
}

class TokosmileApp extends StatelessWidget {
  const TokosmileApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.grey),
      home: const HomeScreen(),
    );
  }
}
