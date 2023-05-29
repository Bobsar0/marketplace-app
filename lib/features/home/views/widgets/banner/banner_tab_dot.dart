import 'package:flutter/material.dart';
import 'package:marketplace/shared/styles/style_constants.dart';
import 'package:marketplace/shared/styles/tokosmile_colors.dart';

class BannerTabDots extends StatelessWidget {
  const BannerTabDots(
      {Key? key, required this.activeIndex, required this.length})
      : super(key: key);

  final int activeIndex;
  final int length;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        length,
        (index) => _BannerTabDots(tabIndex: index, activeIndex: activeIndex),
      ),
    );
  }
}

class _BannerTabDots extends StatelessWidget {
  final int tabIndex;
  final int activeIndex;

  const _BannerTabDots(
      {Key? key, required this.tabIndex, required this.activeIndex})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: StyleConstants.animationDuration,
      margin: const EdgeInsets.only(right: StyleConstants.defaultSize / 2),
      width: activeIndex == tabIndex
          ? StyleConstants.defaultSize * 1.2
          : StyleConstants.defaultSize / 2.5,
      height: StyleConstants.defaultSize / 2.5,
      decoration: BoxDecoration(
        color: activeIndex == tabIndex
            ? TokosmileColors.metallicBlack
            : TokosmileColors.disabledGrey,
        borderRadius: BorderRadius.circular(StyleConstants.defaultSize / 3),
      ),
    );
  }
}
