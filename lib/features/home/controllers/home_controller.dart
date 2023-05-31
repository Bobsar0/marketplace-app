import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:marketplace/features/home/services/banner_service.dart';
import 'package:marketplace/features/home/services/product_service.dart';
import 'package:marketplace/shared/utils/locator.dart';

import '../../../shared/models/product.dart';
import '../models/banner.dart';

/// Controller that manages events in the home screen
class HomeController extends GetxController {
  RxInt currHeaderIndex = 0.obs;
  Rx<Color> get currHeaderColor =>
      Color(banners[currHeaderIndex.value].colorHex).obs;

  /// max extent to which the home app bar can be scrolled
  double maxScrollExtent = 120;

  /// min extent to which the home app bar can be scrolled
  double minScrollExtent = 110;

  final BannerService _bannerService = Locator.getService();
  final ProductService _productService = Locator.getService();

  List<BannerData> get banners => _bannerService.getBanners();

  List<Product> get products => _productService.getProducts();
}
