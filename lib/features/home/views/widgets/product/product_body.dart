import 'package:flutter/material.dart';

import '../../../../../shared/styles/style_constants.dart';
import '../../../../../shared/styles/tokosmile_colors.dart';
import '../../../models/product.dart';

class ProductBody extends StatelessWidget {
  final Product product;

  const ProductBody(this.product, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          product.category,
          style: const TextStyle(
            color: TokosmileColors.bannerFooterGrey,
          ),
        ),
        const SizedBox(height: StyleConstants.defaultSize / 2),
        Text(
          product.title,
          style: const TextStyle(fontWeight: FontWeight.bold),
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),
      ],
    );
  }
}
