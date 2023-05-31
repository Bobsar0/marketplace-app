import 'package:flutter/material.dart';

import '../../../../../shared/styles/tokosmile_colors.dart';

class RatingsViewer extends StatelessWidget {
  final int rateNumber;
  final String numberOfReviews;
  final double percentage;

  static const double _containerWidth = 150;

  const RatingsViewer(
      {Key? key,
      required this.rateNumber,
      required this.numberOfReviews,
      required this.percentage})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(
          Icons.star,
          color: TokosmileColors.gold,
        ),
        const SizedBox(width: 10),
        Text('$rateNumber'),
        const SizedBox(width: 10),
        Flexible(
          child: Stack(
            alignment: Alignment.centerLeft,
            children: [
              Container(
                height: 10,
                width: _containerWidth,
                decoration: BoxDecoration(
                  color: TokosmileColors.brightGrey,
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              Container(
                height: 10,
                width: percentage * _containerWidth,
                decoration: BoxDecoration(
                  color: TokosmileColors.green,
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ],
          ),
        ),
        // Container(
        //   height: 10,
        //   width: 150,
        //   decoration: BoxDecoration(
        //     gradient: const LinearGradient(
        //         colors: <Color>[
        //           TokosmileColors.green,
        //           TokosmileColors.lightGrey,
        //           TokosmileColors.lightGrey,
        //           TokosmileColors.lightGrey
        //         ],
        //         end: Alignment.centerRight,
        //         begin: Alignment.centerLeft,
        //         stops: [0.0, 0.5, 0.8, 1.0]),
        //     borderRadius: BorderRadius.circular(10),
        //   ),
        // ),
        const SizedBox(width: 10),
        Text(
          numberOfReviews,
          style: const TextStyle(fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}
