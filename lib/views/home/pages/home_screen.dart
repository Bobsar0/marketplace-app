import 'package:flutter/material.dart';
import 'package:marketplace/views/home/widgets/home_app_bar.dart';
import 'package:marketplace/views/shared/design/tokosmile_colors.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: HomeAppBar(color: TokosmileColors.brightGray),
      body: SafeArea(
        child: Column(
          children: [],
        ),
      ),
    );
  }
}
