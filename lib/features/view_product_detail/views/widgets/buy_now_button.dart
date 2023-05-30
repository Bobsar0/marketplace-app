import 'package:flutter/material.dart';
import 'package:marketplace/shared/styles/style_constants.dart';

import '../../../../shared/styles/tokosmile_colors.dart';

class BuyNowButton extends StatelessWidget {
  const BuyNowButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 55,
          width: 70,
          decoration: const BoxDecoration(
            color: TokosmileColors.green,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(5),
              bottomLeft: Radius.circular(5),
            ),
          ),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.shopping_bag_outlined, color: Colors.white, size: 20),
              SizedBox(width: StyleConstants.defaultSize / 1.5),
              Text("1", style: TextStyle(fontSize: 16, color: Colors.white)),
            ],
          ),
        ),
        Container(
          height: 55,
          width: 130,
          decoration: const BoxDecoration(
            color: TokosmileColors.eerieBlack,
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(5),
              bottomRight: Radius.circular(5),
            ),
          ),
          child: const Center(
            child: Text("Buy Now",
                style: TextStyle(fontSize: 16, color: Colors.white)),
          ),
        )
      ],
    );
  }
}
