import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:marketplace/features/home/views/home_screen.dart';
import 'package:marketplace/features/landing/controllers/landing_controller.dart';
import 'package:marketplace/features/landing/views/widgets/bottom_nav_bar.dart';
import 'package:marketplace/shared/utils/locator.dart';

class LandingScreen extends StatefulWidget {
  const LandingScreen({Key? key}) : super(key: key);

  @override
  State<LandingScreen> createState() => _LandingScreenState();
}

class _LandingScreenState extends State<LandingScreen> {
  final LandingController _controller = Locator.getController();

  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

  static final List<Widget> _pages = <Widget>[
    HomeScreen(),
    const Text('Voucher', style: optionStyle),
    const Text('Wallet', style: optionStyle),
    const Text('Settings', style: optionStyle),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() => _pages[_controller.currPageIndex.value]),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}
