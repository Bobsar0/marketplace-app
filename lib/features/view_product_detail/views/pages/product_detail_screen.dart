import 'package:flutter/material.dart';
import 'package:marketplace/features/home/views/widgets/product/heart_widget.dart';
import 'package:marketplace/features/view_product_detail/views/widgets/description_content.dart';
import 'package:marketplace/features/view_product_detail/views/widgets/img_video_reviews_widget.dart';
import 'package:marketplace/features/view_product_detail/views/widgets/recommendation_content.dart';
import 'package:marketplace/features/view_product_detail/views/widgets/reviews_rating_content.dart';
import 'package:marketplace/shared/styles/style_constants.dart';
import 'package:marketplace/shared/views/widgets/app_bar_stacked_icon.dart';

import '../../../../shared/styles/tokosmile_colors.dart';
import '../../../home/models/product.dart';
import '../widgets/bottom_sheet_widget.dart';
import '../widgets/dot_widget.dart';
import '../widgets/product_tab_bar_view.dart';
import '../widgets/seller_info_content.dart';
import '../widgets/shipping_info_content.dart';

class ProductDetailScreen extends StatelessWidget {
  final Product product;

  const ProductDetailScreen(this.product, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: TokosmileColors.white,
          elevation: 0.0,
          actions: [
            HeartWidget(product: product),
            IconButton(
                onPressed: () {}, icon: const Icon(Icons.share_outlined)),
            const AppBarStackedIcon(
                text: '1', icon: Icons.shopping_bag_outlined)
          ],
        ),
        body: SingleChildScrollView(
          child: Container(
            decoration: const BoxDecoration(
                gradient: TokosmileColors.whiteGreyGradient),
            padding: const EdgeInsets.fromLTRB(20, 20, 20, 100),
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
                    Icon(Icons.storefront_outlined,
                        color: Colors.grey, size: 20),
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
                                fontSize: 17,
                                color: TokosmileColors.defaultGrey),
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
                SizedBox(height: 160, child: ProductTabBarView(product)),
                const Divider(color: TokosmileColors.defaultGrey),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 15.0),
                  child: DescriptionContent(product.description),
                ),
                const Divider(color: TokosmileColors.defaultGrey),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 15.0),
                  child: ShippingInfoContent(),
                ),
                const Divider(color: TokosmileColors.defaultGrey),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 15.0),
                  child: SellerInfoContent(),
                ),
                const Divider(color: TokosmileColors.defaultGrey),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 15.0),
                  child: ReviewsRatingContent(),
                ),
                const Divider(color: TokosmileColors.defaultGrey),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 15.0),
                  child:
                      ImgVideoReviewWidget(assetPaths: product.thumbnailPaths),
                ),
                const Divider(color: TokosmileColors.defaultGrey),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 15.0),
                  child: RecommendationContent(product: product),
                ),
              ],
            ),
          ),
        ),
        bottomSheet: BottomSheetWidget(product: product));
  }
}
