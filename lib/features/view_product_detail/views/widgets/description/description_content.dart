import 'package:flutter/material.dart';
import 'package:marketplace/shared/styles/style_constants.dart';
import 'package:marketplace/shared/styles/tokosmile_colors.dart';

import '../dot_widget.dart';

class DescriptionContent extends StatelessWidget {
  final List<String> descriptions;

  const DescriptionContent(this.descriptions, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      mainAxisSize: MainAxisSize.min,
      children: [
        const Align(
          alignment: Alignment.centerLeft,
          child: Text('Description:',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
        ),
        const SizedBox(height: StyleConstants.defaultSize),
        ...descriptions.map(
          (text) => Row(
            children: [
              const SizedBox(width: StyleConstants.defaultSize),
              const DotWidget(),
              const SizedBox(width: StyleConstants.defaultSize),
              Flexible(
                child: Text(text,
                    style: const TextStyle(
                        color: TokosmileColors.defaultGrey, fontSize: 13)),
              ),
            ],
          ),
        ),
        const SizedBox(height: StyleConstants.defaultSize * 1.5),
        const Text(
            'Chat us if there is anything you need to ask about the product :)',
            style: TextStyle(color: TokosmileColors.defaultGrey, fontSize: 13)),
        const SizedBox(height: StyleConstants.defaultSize),
        Row(
          children: [
            const Text('See less',
                style: TextStyle(color: TokosmileColors.green)),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.expand_less,
                  size: 16, color: TokosmileColors.green),
              alignment: Alignment.centerLeft,
            )
          ],
        )
      ],
    );
  }
}
