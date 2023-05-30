import 'package:flutter/material.dart';
import 'package:marketplace/shared/styles/tokosmile_colors.dart';

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
            _AboutTextLabel(label: 'Brand', value: 'ChArmkpR'),
            _AboutTextLabel(label: 'Color', value: 'Aprikot'),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _AboutTextLabel(label: 'Category', value: 'Casual Shirt'),
            _AboutTextLabel(label: 'Material', value: 'Polyester'),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _AboutTextLabel(label: 'Condition', value: 'New'),
            _AboutTextLabel(label: 'Heavy', value: '200 g'),
          ],
        )
      ],
    );
  }
}

class _AboutTextLabel extends StatelessWidget {
  final String label;
  final String value;

  const _AboutTextLabel({Key? key, required this.label, required this.value})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: '$label:   ',
        style: DefaultTextStyle.of(context)
            .style
            .copyWith(color: TokosmileColors.defaultGrey),
        children: <TextSpan>[
          TextSpan(
            text: value,
            style: const TextStyle(
                fontWeight: FontWeight.bold, color: TokosmileColors.eerieBlack),
          ),
        ],
      ),
    );
  }
}
