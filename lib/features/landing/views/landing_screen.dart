import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:marketplace/features/home/views/home_screen.dart';
import 'package:marketplace/features/landing/controllers/landing_controller.dart';
import 'package:marketplace/features/landing/views/widgets/bottom_nav_bar.dart';
import 'package:marketplace/shared/styles/text_constants.dart';
import 'package:marketplace/shared/styles/tokosmile_colors.dart';
import 'package:marketplace/shared/utils/locator.dart';

class LandingScreen extends StatefulWidget {
  const LandingScreen({Key? key}) : super(key: key);

  @override
  State<LandingScreen> createState() => _LandingScreenState();
}

class _LandingScreenState extends State<LandingScreen> {
  final LandingController _controller = Locator.getController();

  static final List<Widget> _pages = <Widget>[
    HomeScreen(),
    const Center(child: Text(TextConstants.unimplementedText)),
    const Center(child: Text(TextConstants.unimplementedText)),
    const Center(child: Text(TextConstants.unimplementedText)),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          decoration:
              const BoxDecoration(gradient: TokosmileColors.whiteGreyGradient),
          child: Obx(() => _pages[_controller.currPageIndex.value])),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}
