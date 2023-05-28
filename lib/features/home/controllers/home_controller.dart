import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:marketplace/shared/styles/assets.dart';

import '../models/header_data.dart';

class HomeController extends GetxController {
  RxInt currHeaderIndex = 0.obs;
  Rx<Color> get currHeaderColor =>
      Color(headerDataList[currHeaderIndex.value].colorHex).obs;

  List<HeaderData> headerDataList = [
    HeaderData(
      id: 0,
      title: '#FASHION DAY',
      body: '80% OFF',
      footer: 'Discover fashion that suits to\nyour style',
      colorHex: 0xFFF0F0F0,
      imagePath: Assets.homeHeaderFashion,
    ),
    HeaderData(
        id: 1,
        title: '#BEAUTY SALE',
        body: 'DISCOVER OUR\nBEAUTY SELECTION',
        colorHex: 0xFFEBE1E2,
        imagePath: Assets.homeHeaderCosmetics),
    HeaderData(
        id: 2,
        title: '#SHOES SALE',
        body: 'DISCOVER OUR \nQUALITY SHOES',
        colorHex: 0xFF656B82,
        imagePath: Assets.homeHeaderShoes),
  ];
}
