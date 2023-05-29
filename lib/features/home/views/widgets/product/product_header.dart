import 'package:flutter/material.dart';
import 'package:marketplace/features/home/views/widgets/product/heart_widget.dart';
import 'package:marketplace/shared/styles/style_constants.dart';

import '../../../models/product.dart';

class ProductHeader extends StatefulWidget {
  final Product product;

  const ProductHeader(this.product, {Key? key}) : super(key: key);

  @override
  State<ProductHeader> createState() => _ProductHeaderState();
}

class _ProductHeaderState extends State<ProductHeader> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          padding: EdgeInsets.zero,
          height: StyleConstants.defaultSize * 9,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(widget.product.imagePath),
                  fit: BoxFit.cover)),
        ),
        const Positioned(
          top: 0,
          right: 0,
          child: HeartWidget(),
        )
      ],
    );
  }
}
