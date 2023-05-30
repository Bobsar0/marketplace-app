import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:marketplace/features/home/services/banner_service.dart';
import 'package:marketplace/features/home/services/product_service.dart';
import 'package:marketplace/shared/utils/locator.dart';

import '../../../shared/models/product.dart';
import '../models/banner.dart';

class HomeController extends GetxController {
  RxInt currHeaderIndex = 0.obs;
  Rx<Color> get currHeaderColor =>
      Color(banners[currHeaderIndex.value].colorHex).obs;

  final BannerService _bannerService = Locator.getService();
  final ProductService _productService = Locator.getService();

  List<BannerData> get banners => _bannerService.getBanners();

  List<Product> get products => _productService.getProducts();
}
