import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../shared/styles/tokosmile_colors.dart';

class HeartWidget extends StatefulWidget {
  const HeartWidget({Key? key}) : super(key: key);

  @override
  State<HeartWidget> createState() => _HeartWidgetState();
}

class _HeartWidgetState extends State<HeartWidget> {
  bool isLiked = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 30,
      height: 35,
      color: TokosmileColors.headerGrey,
      child: IconButton(
        iconSize: 20,
        icon: isLiked
            ? const Icon(CupertinoIcons.heart_fill,
                color: TokosmileColors.darkPink)
            : const Icon(CupertinoIcons.heart),
        onPressed: () => setState(() {
          isLiked = !isLiked;
        }),
      ),
    );
  }
}
