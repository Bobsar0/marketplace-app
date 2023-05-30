import 'package:flutter/material.dart';
import 'package:marketplace/features/home/views/widgets/product/heart_widget.dart';
import 'package:marketplace/shared/styles/style_constants.dart';
import 'package:marketplace/shared/views/widgets/app_bar_stacked_icon.dart';

import '../../../../shared/styles/tokosmile_colors.dart';
import '../../../home/models/product.dart';
import '../widgets/buy_now_button.dart';
import '../widgets/dot_widget.dart';
import '../widgets/product_tab_bar_view.dart';

class ProductDetailScreen extends StatelessWidget {
  final Product product;

  const ProductDetailScreen(this.product, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomSheet: Padding(
        padding: const EdgeInsets.only(
            top: StyleConstants.defaultSize * 2,
            left: StyleConstants.defaultSize * 2,
            right: StyleConstants.defaultSize * 2,
            bottom: StyleConstants.defaultSize * 4),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              height: 40,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Text(
                    "Total Price",
                    style: TextStyle(fontSize: 13, color: Colors.grey),
                  ),
                  const SizedBox(height: 3),
                  Text(
                    "\$${product.price}",
                    style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 22,
                        color: TokosmileColors.green),
                  ),
                ],
              ),
            ),
            const BuyNowButton()
          ],
        ),
      ),
      appBar: AppBar(
        backgroundColor: TokosmileColors.white,
        elevation: 0.0,
        actions: [
          HeartWidget(product: product),
          IconButton(onPressed: () {}, icon: const Icon(Icons.share_outlined)),
          const AppBarStackedIcon(text: '1', icon: Icons.shopping_bag_outlined)
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          decoration:
              const BoxDecoration(gradient: TokosmileColors.whiteGreyGradient),
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Stack(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height / 2.5,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                        image: AssetImage(product.imagePath),
                      ),
                      color: TokosmileColors.bottomBarGrey,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: StyleConstants.defaultSize * 2),
              const Row(
                children: [
                  Icon(Icons.storefront_outlined, color: Colors.grey, size: 20),
                  SizedBox(width: 15),
                  Text(
                    'tokobaju.id',
                    style: TextStyle(color: Colors.grey, fontSize: 15),
                  )
                ],
              ),
              const SizedBox(height: StyleConstants.defaultSize * 1.5),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  product.title,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 22),
                ),
              ),
              const SizedBox(height: StyleConstants.defaultSize * 2),
              Flexible(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        const Icon(Icons.star, color: TokosmileColors.gold),
                        const SizedBox(width: StyleConstants.defaultSize / 2),
                        Text(
                          "${product.rating} Ratings",
                          style: const TextStyle(
                              fontSize: 17, color: TokosmileColors.defaultGrey),
                        ),
                      ],
                    ),
                    const DotWidget(),
                    const Text(
                      "2.3k+ Reviews",
                      style: TextStyle(fontSize: 17, color: Colors.grey),
                    ),
                    const DotWidget(),
                    const Text(
                      "2.9k+ Sold",
                      style: TextStyle(fontSize: 17, color: Colors.grey),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: StyleConstants.defaultSize * 2.5),
              SizedBox(height: 180, child: ProductTabBarView(product)),
            ],
          ),
        ),
      ),
    );
  }
}
