import 'package:flutter/material.dart';
import 'package:marketplace/features/home/views/widgets/product/heart_widget.dart';
import 'package:marketplace/shared/styles/style_constants.dart';
import 'package:marketplace/shared/styles/tokosmile_colors.dart';

import '../../../../../shared/models/product.dart';
import '../../../../view_product_detail/views/pages/product_detail_screen.dart';

class ProductHeader extends StatelessWidget {
  final Product product;

  const ProductHeader(this.product, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        GestureDetector(
          onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => ProductDetailScreen(product))),
          child: Container(
            height: StyleConstants.defaultSize * 10,
            decoration: BoxDecoration(
                color: TokosmileColors.imgBackgroundGrey,
                image: DecorationImage(
                    image: AssetImage(product.imagePath), fit: BoxFit.cover)),
          ),
        ),
        Positioned(
          top: 0,
          right: 0,
          child: Container(
            width: StyleConstants.defaultSize * 3,
            height: StyleConstants.defaultSize * 3,
            color: TokosmileColors.headerGrey,
            child: HeartWidget(
              product: product,
              size: StyleConstants.defaultSize * 1.5,
            ),
          ),
        )
      ],
    );
  }
}
