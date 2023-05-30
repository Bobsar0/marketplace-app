import 'package:flutter/material.dart';

import '../../../../shared/models/product.dart';
import '../../../../shared/styles/style_constants.dart';
import '../../../../shared/styles/tokosmile_colors.dart';
import 'buy_now_button.dart';

class BottomSheetWidget extends StatelessWidget {
  const BottomSheetWidget({
    super.key,
    required this.product,
  });

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
          top: StyleConstants.defaultSize * 2,
          left: StyleConstants.defaultSize * 2,
          right: StyleConstants.defaultSize * 2,
          bottom: StyleConstants.defaultSize * 3),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Total Price",
                style: TextStyle(fontSize: 12, color: Colors.grey),
              ),
              const SizedBox(height: 5),
              Text(
                "\$${product.price.toStringAsFixed(2)}",
                style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                    color: TokosmileColors.green),
              ),
            ],
          ),
          const BuyNowButton()
        ],
      ),
    );
  }
}
