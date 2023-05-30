import 'package:flutter/material.dart';
import 'package:marketplace/shared/models/product.dart';

import '../../../../../shared/styles/style_constants.dart';
import '../../../../../shared/styles/tokosmile_colors.dart';

class ProductFooter extends StatelessWidget {
  final Product product;
  const ProductFooter(this.product, {super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            const Icon(
              Icons.star,
              color: TokosmileColors.gold,
              size: StyleConstants.defaultSize * 1.5,
            ),
            const SizedBox(width: StyleConstants.defaultSize / 3),
            Text(
              '${product.rating} | ${product.votes}',
              style: const TextStyle(
                  color: TokosmileColors.bannerFooterGrey,
                  fontSize: StyleConstants.defaultSize),
            ),
          ],
        ),
        Text(
          '\$${product.price.toStringAsFixed(2)}',
          style: const TextStyle(
              color: TokosmileColors.green,
              fontSize: StyleConstants.defaultSize * 1.5,
              fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}
