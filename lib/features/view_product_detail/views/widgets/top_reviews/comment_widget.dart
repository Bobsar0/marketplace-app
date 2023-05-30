import 'package:flutter/material.dart';

import '../../../../../shared/styles/tokosmile_colors.dart';

class CommentWidget extends StatelessWidget {
  final String text;
  final double width;
  const CommentWidget({Key? key, required this.text, required this.width})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      width: width,
      decoration: BoxDecoration(
        color: TokosmileColors.green.withOpacity(0.2),
        border: Border.all(color: TokosmileColors.defaultGrey),
        borderRadius: BorderRadius.circular(19),
      ),
      child: Center(
          child: Text(
        text,
        style: const TextStyle(color: TokosmileColors.green, fontSize: 10),
      )),
    );
  }
}
