import 'package:flutter/material.dart';

import '../../../../../shared/styles/style_constants.dart';
import '../../../../../shared/styles/tokosmile_colors.dart';

class ProductsGridHeader extends StatelessWidget {
  const ProductsGridHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.fromLTRB(
          StyleConstants.defaultSize * 2,
          StyleConstants.defaultSize * 3,
          StyleConstants.defaultSize * 2,
          StyleConstants.defaultSize * 1.5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Best Sale Product',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          Text(
            'See more',
            style: TextStyle(
                fontWeight: FontWeight.bold, color: TokosmileColors.green),
          ),
        ],
      ),
    );
  }
}
