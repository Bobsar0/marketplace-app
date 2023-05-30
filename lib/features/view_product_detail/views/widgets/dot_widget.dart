import 'package:flutter/material.dart';
import 'package:marketplace/shared/styles/style_constants.dart';
import 'package:marketplace/shared/styles/tokosmile_colors.dart';

class DotWidget extends StatelessWidget {
  const DotWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: StyleConstants.defaultSize / 2,
      width: StyleConstants.defaultSize / 2,
      decoration: BoxDecoration(
        color: TokosmileColors.defaultGrey,
        borderRadius: BorderRadius.circular(100),
      ),
    );
  }
}
