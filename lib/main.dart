import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:marketplace/features/landing/views/landing_screen.dart';

void main() {
  runApp(const TokosmileApp());
}

class TokosmileApp extends StatelessWidget {
  const TokosmileApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          primarySwatch: Colors.grey,
          fontFamily: GoogleFonts.lato().fontFamily),
      home: const LandingScreen(),
    );
  }
}
