import 'package:flutter/material.dart';
import 'package:marketplace/features/home/views/widgets/product/product_body.dart';
import 'package:marketplace/features/home/views/widgets/product/product_footer.dart';
import 'package:marketplace/features/home/views/widgets/product/product_header.dart';
import 'package:marketplace/shared/styles/style_constants.dart';

import '../../../models/product.dart';

class ProductWidget extends StatelessWidget {
  final Product product;

  const ProductWidget(this.product, {super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: StyleConstants.defaultSize * 25,
      child: Column(
        children: [
          ProductHeader(product),
          const SizedBox(height: StyleConstants.defaultSize),
          Padding(
            padding: const EdgeInsets.all(StyleConstants.defaultSize),
            child: ProductBody(product),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: StyleConstants.defaultSize),
            child: ProductFooter(product),
          )
        ],
      ),
    );
  }
}
