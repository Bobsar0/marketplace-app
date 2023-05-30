import 'package:flutter/material.dart';
import 'package:marketplace/shared/styles/style_constants.dart';
import 'package:marketplace/shared/styles/tokosmile_colors.dart';

class SellerInfoContent extends StatelessWidget {
  const SellerInfoContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      width: double.infinity,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('Seller Information',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  color: TokosmileColors.eerieBlack)),
          Flexible(
            child: Row(
              children: [
                Container(
                  height: 80,
                  width: 80,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: TokosmileColors.brightGrey2,
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: const Text(
                    'Thrifting Store.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: TokosmileColors.eerieBlack),
                  ),
                ),
                const SizedBox(width: StyleConstants.defaultSize * 2),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('Thrifting_Store',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                            color: TokosmileColors.eerieBlack)),
                    const SizedBox(height: StyleConstants.defaultSize),
                    const Text('Active 5 Min ago | 96.7% Positive Feedback',
                        style: TextStyle(
                            color: TokosmileColors.defaultGrey, fontSize: 11)),
                    const SizedBox(height: StyleConstants.defaultSize),
                    OutlinedButton(
                      onPressed: () {},
                      style: OutlinedButton.styleFrom(
                          foregroundColor: TokosmileColors.green,
                          side: const BorderSide(color: TokosmileColors.green),
                          padding: const EdgeInsets.symmetric(horizontal: 20)),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(Icons.storefront_outlined, size: 15),
                          Text('Visit store', style: TextStyle(fontSize: 12))
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
