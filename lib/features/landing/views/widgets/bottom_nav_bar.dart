import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

import '../../../../shared/styles/tokosmile_colors.dart';
import '../../../../shared/utils/locator.dart';
import '../../controllers/landing_controller.dart';

class BottomNavBar extends StatelessWidget {
  BottomNavBar({super.key});

  final LandingController _controller = Locator.getController();

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.ticket), label: 'Voucher'),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_balance_wallet_outlined),
              label: 'Wallet'),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings), label: 'Settings'),
        ],
        currentIndex: _controller.currPageIndex.value,
        backgroundColor: TokosmileColors.bottomBarGrey,
        selectedIconTheme: const IconThemeData(color: TokosmileColors.green),
        selectedItemColor: TokosmileColors.eerieBlack,
        unselectedItemColor: TokosmileColors.darkGrey,
        showUnselectedLabels: true,
        showSelectedLabels: true,
        selectedLabelStyle: const TextStyle(
            color: TokosmileColors.eerieBlack, fontWeight: FontWeight.bold),
        unselectedLabelStyle: const TextStyle(color: TokosmileColors.darkGrey),
        onTap: _controller.onNavBarTapped,
      );
    });
  }
}
