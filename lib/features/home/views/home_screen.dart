import 'package:flutter/material.dart';
import 'package:marketplace/features/home/views/widgets/banner/banner_content.dart';
import 'package:marketplace/features/home/views/widgets/banner/banner_sliver_header_delegate.dart';
import 'package:marketplace/features/home/views/widgets/banner/banner_tab_dot.dart';
import 'package:marketplace/features/home/views/widgets/body_icon_row.dart';
import 'package:marketplace/features/home/views/widgets/product/product_widget.dart';
import 'package:marketplace/features/home/views/widgets/product/products_grid_header.dart';

import '../../../shared/styles/style_constants.dart';
import '../../../shared/styles/tokosmile_colors.dart';
import '../../../shared/utils/locator.dart';
import '../controllers/home_controller.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  final HomeController _controller = Locator.getController();

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverPersistentHeader(
          delegate: BannerSliverHeaderDelegate(),
          pinned: true,
        ),
        SliverToBoxAdapter(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(
                height: 175,
                child: PageView.builder(
                  onPageChanged: (value) => _controller.currHeaderIndex(value),
                  itemCount: _controller.banners.length,
                  itemBuilder: (context, index) =>
                      BannerContent(_controller.banners[index]),
                ),
              ),
              const BannerBottomIcons(),
              Flexible(
                child: Container(
                    color: TokosmileColors.white,
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    child: const BannerTabDots(activeIndex: 0, length: 3)),
              ),
              const ProductsGridHeader(),
            ],
          ),
        ),
        SliverPadding(
            padding: const EdgeInsets.all(StyleConstants.defaultSize * 2),
            sliver: SliverGrid.builder(
              itemCount: _controller.products.length,
              itemBuilder: (context, index) =>
                  ProductWidget(_controller.products[index]),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: StyleConstants.defaultSize * 2,
                  mainAxisSpacing: StyleConstants.defaultSize,
                  childAspectRatio: 0.8),
            ))
      ],
    );
  }
}
