import 'package:flutter/material.dart';

import '../../../../shared/styles/tokosmile_colors.dart';
import 'content_text_label.dart';

class ShippingInfoContent extends StatelessWidget {
  const ShippingInfoContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 150,
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text('Shippings Information:',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                  color: TokosmileColors.eerieBlack)),
          SizedBox(height: 20),
          ContentTextLabel(
              label: 'Delivery', value: 'Shipping from Jakarta, Indonesia'),
          ContentTextLabel(
              label: 'Shipping', value: 'FREE International Shipping'),
          ContentTextLabel(
              label: 'Arrive', value: 'Estimated arrival on 25 - 27 Oct 2022'),
        ],
      ),
    );
  }
}
