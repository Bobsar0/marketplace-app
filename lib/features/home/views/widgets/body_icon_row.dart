import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:marketplace/shared/styles/tokosmile_colors.dart';

import '../../../../shared/styles/style_constants.dart';

/// Icons placed at the bottom of the banner
class BannerBottomIcons extends StatelessWidget {
  const BannerBottomIcons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const ColoredBox(
      color: TokosmileColors.white,
      child: Padding(
        padding:
            EdgeInsets.symmetric(vertical: StyleConstants.defaultSize * 1.6),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            _BodyIcon(icon: Icons.category_outlined, label: 'Category'),
            _BodyIcon(icon: Icons.flight_outlined, label: 'Flight'),
            _BodyIcon(icon: Icons.padding, label: 'Bill'),
            _BodyIcon(icon: CupertinoIcons.globe, label: 'Data plan'),
            _BodyIcon(icon: Icons.monetization_on_outlined, label: 'Top Up'),
          ],
        ),
      ),
    );
  }
}

class _BodyIcon extends StatelessWidget {
  final IconData icon;
  final String label;

  const _BodyIcon({required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          height: 45,
          decoration: BoxDecoration(
            color: TokosmileColors.headerGrey,
            borderRadius: BorderRadius.circular(StyleConstants.defaultSize),
          ),
          child: IconButton(
            icon: Icon(icon),
            color: TokosmileColors.greyBlack,
            iconSize: 22,
            onPressed: () {},
            padding: EdgeInsets.zero,
          ),
        ),
        const SizedBox(height: 10),
        Text(label,
            style: const TextStyle(
                color: TokosmileColors.iconTextGrey, fontSize: 13)),
      ],
    );
  }
}
