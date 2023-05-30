import 'package:flutter/material.dart';
import 'package:marketplace/features/home/controllers/home_controller.dart';
import 'package:marketplace/features/home/views/widgets/banner/banner_content.dart';
import 'package:marketplace/features/home/views/widgets/banner/banner_tab_dot.dart';
import 'package:marketplace/features/home/views/widgets/body_icon_row.dart';
import 'package:marketplace/features/home/views/widgets/product/product_widget.dart';
import 'package:marketplace/shared/styles/style_constants.dart';
import 'package:marketplace/shared/utils/locator.dart';

import '../../../shared/styles/tokosmile_colors.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  final HomeController _controller = Locator.getController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          primary: true,
          child: SizedBox(
            width: double.infinity,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(
                  height: StyleConstants.defaultSize * 30.5,
                  child: PageView.builder(
                    onPageChanged: (value) =>
                        _controller.currHeaderIndex(value),
                    itemCount: _controller.banners.length,
                    itemBuilder: (context, index) =>
                        BannerContent(_controller.banners[index]),
                  ),
                ),
                Container(
                  color: Colors.white,
                  child: const Column(
                    children: [
                      SizedBox(height: StyleConstants.defaultSize * 2),
                      BodyIconRow(),
                      SizedBox(height: StyleConstants.defaultSize * 2.5),
                      BannerTabDots(activeIndex: 0, length: 3),
                      SizedBox(height: StyleConstants.defaultSize * 1.5),
                    ],
                  ),
                ),
                Container(
                  decoration: const BoxDecoration(
                    gradient: TokosmileColors.greyWhiteGradient,
                  ),
                  child: const Padding(
                    padding: EdgeInsets.fromLTRB(
                        StyleConstants.defaultSize * 2,
                        StyleConstants.defaultSize * 2,
                        StyleConstants.defaultSize * 2,
                        StyleConstants.defaultSize * 1.5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Best Sale Product',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'See more',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: TokosmileColors.green),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  decoration: const BoxDecoration(
                    gradient: TokosmileColors.whiteGreyGradient,
                  ),
                  child: GridView.builder(
                    shrinkWrap: true,
                    itemCount: _controller.products.length,
                    padding:
                        const EdgeInsets.all(StyleConstants.defaultSize * 2),
                    itemBuilder: (context, index) =>
                        ProductWidget(_controller.products[index]),
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            crossAxisSpacing: StyleConstants.defaultSize * 2,
                            mainAxisSpacing: StyleConstants.defaultSize * 2,
                            childAspectRatio: 0.8),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
