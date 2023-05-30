import 'package:flutter/material.dart';

import '../../../../shared/styles/tokosmile_colors.dart';

class ContentTextLabel extends StatelessWidget {
  final String label;
  final String value;

  const ContentTextLabel({Key? key, required this.label, required this.value})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: RichText(
        text: TextSpan(
          text: '$label:   ',
          style: DefaultTextStyle.of(context)
              .style
              .copyWith(color: TokosmileColors.defaultGrey),
          children: <TextSpan>[
            TextSpan(
              text: value,
              style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  color: TokosmileColors.eerieBlack),
            ),
          ],
        ),
      ),
    );
  }
}
