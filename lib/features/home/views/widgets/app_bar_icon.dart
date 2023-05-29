import 'package:flutter/material.dart';
import 'package:marketplace/shared/styles/style_constants.dart';

import '../../../../shared/styles/tokosmile_colors.dart';

class AppBarIcon extends StatelessWidget {
  final String text;
  final IconData icon;
  final void Function()? onPressed;

  const AppBarIcon(
      {Key? key, required this.text, required this.icon, this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        IconButton(
            onPressed: onPressed,
            icon: Icon(icon, color: TokosmileColors.metallicBlack)),
        Positioned(
          left: StyleConstants.defaultSize * 1.9,
          top: StyleConstants.defaultSize / 2,
          child: Card(
            child: Container(
              width: StyleConstants.defaultSize * 1.8,
              height: StyleConstants.defaultSize * 1.5,
              decoration: BoxDecoration(
                color: TokosmileColors.darkPink,
                borderRadius: BorderRadius.circular(4),
              ),
              child: Align(
                alignment: Alignment.center,
                child: Text(text,
                    style: const TextStyle(fontSize: 10, color: Colors.white)),
              ),
            ),
          ),
        )
      ],
    );
  }
}
