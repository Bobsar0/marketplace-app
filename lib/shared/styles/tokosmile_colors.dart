import 'package:flutter/material.dart';

class TokosmileColors {
  TokosmileColors._();

  static const Color defaultGrey = Colors.grey;
  static const Color brightGrey = Color(0xFFE9EBEA);
  static const Color brightGrey2 = Color(0xFFE7E9EB);
  static const Color lightGrey = Color(0xFFF6F6F6);
  static const Color imgBackgroundGrey = Color(0xFFE7E9EB);
  static const Color darkGrey = Color(0xFF6A7285);
  static const Color greyBlack = Color(0xFF4D4F5B);
  static const Color bottomBarGrey = Color(0xFFEDEEF0);
  static const Color disabledGrey = Color(0xFFB2B8B5);
  static const Color headerGrey = Color(0xFFF0F0F0);
  static const Color iconTextGrey = Color(0xFFBCBCBC);
  static const Color bannerFooterGrey = Color(0xFFAAACB0);
  static const Color metallicBlack = Color(0xFF2A2D41);
  static const Color eerieBlack = Color(0xFF161828);
  static const Color platinumPink = Color(0xFFEBE1E2);
  static const Color darkPink = Color(0xFFE55986);
  static const Color green = Color(0xFF4DAB96);
  static const Color whiteGrey = Color(0xFFFDFDFD);
  static const Color white = Color(0xFFFFFFFF);
  static const Color black = Color(0xFF000000);
  static const Color gold = Color(0xFFFF9434);

  static const whiteGreyGradient = LinearGradient(
      colors: [whiteGrey, headerGrey],
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter);

  static const greyWhiteGradient = LinearGradient(colors: [
    TokosmileColors.lightGrey,
    TokosmileColors.white,
  ], begin: Alignment.topCenter, end: Alignment.bottomCenter);
}
