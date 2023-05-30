import 'package:flutter/material.dart';
import 'package:marketplace/features/home/views/widgets/product/product_widget.dart';
import 'package:marketplace/features/view_product_detail/controllers/product_detail_controller.dart';
import 'package:marketplace/shared/models/product.dart';
import 'package:marketplace/shared/utils/locator.dart';

import '../../../../../shared/styles/style_constants.dart';
import '../../../../../shared/styles/tokosmile_colors.dart';

class RecommendationContent extends StatelessWidget {
  final Product product;
  RecommendationContent({Key? key, required this.product}) : super(key: key);

  final ProductDetailController _controller = Locator.getController();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Recommendation',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: TokosmileColors.eerieBlack)),
            Text('See more',
                style: TextStyle(fontSize: 14, color: TokosmileColors.green))
          ],
        ),
        const SizedBox(height: StyleConstants.defaultSize * 2),
        GridView.count(
          crossAxisCount: 2,
          shrinkWrap: true,
          childAspectRatio: 0.8,
          physics: const NeverScrollableScrollPhysics(),
          crossAxisSpacing: StyleConstants.defaultSize * 2,
          mainAxisSpacing: StyleConstants.defaultSize * 2,
          children: [
            ...product.recommendedProductIds.map((id) {
              final recommendedProduct = _controller.getProduct(id);
              return ProductWidget(recommendedProduct);
            })
          ],
        ),
      ],
    );
  }
}
