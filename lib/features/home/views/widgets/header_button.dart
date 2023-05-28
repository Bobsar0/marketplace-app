import 'package:flutter/material.dart';
import 'package:marketplace/shared/styles/style_constants.dart';
import 'package:marketplace/shared/styles/tokosmile_colors.dart';

class HeaderButton extends StatelessWidget {
  const HeaderButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        backgroundColor: TokosmileColors.metallicBlack,
        foregroundColor: TokosmileColors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(StyleConstants.defaultSize / 2),
        ),
      ),
      child: const Text('Check this out',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13)),
    );
  }
}
