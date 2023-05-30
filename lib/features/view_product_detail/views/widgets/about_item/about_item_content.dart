import 'package:flutter/material.dart';

import '../content_text_label.dart';

class AboutItemContent extends StatelessWidget {
  const AboutItemContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ContentTextLabel(label: 'Brand', value: 'ChArmkpR'),
            ContentTextLabel(label: 'Color', value: 'Aprikot'),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ContentTextLabel(label: 'Category', value: 'Casual Shirt'),
            ContentTextLabel(label: 'Material', value: 'Polyester'),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ContentTextLabel(label: 'Condition', value: 'New'),
            ContentTextLabel(label: 'Heavy', value: '200 g'),
          ],
        )
      ],
    );
  }
}
