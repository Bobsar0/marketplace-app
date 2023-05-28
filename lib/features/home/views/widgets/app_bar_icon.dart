import 'package:flutter/material.dart';

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
        IconButton(onPressed: onPressed, icon: Icon(icon)),
        Positioned(
          left: 20,
          child: Card(
            child: Container(
              width: 20,
              height: 20,
              decoration: BoxDecoration(
                color: TokosmileColors.darkPink,
                borderRadius: BorderRadius.circular(4),
              ),
              child: Align(
                alignment: Alignment.center,
                child: Text(text,
                    style: const TextStyle(fontSize: 12, color: Colors.white)),
              ),
            ),
          ),
        )
      ],
    );
  }
}
