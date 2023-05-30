import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../shared/styles/tokosmile_colors.dart';
import '../../../models/product.dart';

class HeartWidget extends StatefulWidget {
  final Product product;
  final double? size;

  const HeartWidget({super.key, required this.product, this.size});

  @override
  State<HeartWidget> createState() => _HeartWidgetState();
}

class _HeartWidgetState extends State<HeartWidget> {
  @override
  Widget build(BuildContext context) {
    return IconButton(
      iconSize: widget.size,
      icon: widget.product.isLiked
          ? const Icon(CupertinoIcons.heart_fill,
              color: TokosmileColors.darkPink)
          : const Icon(CupertinoIcons.heart),
      onPressed: () => setState(() {
        widget.product.toggleIsLiked();
      }),
    );
  }
}
