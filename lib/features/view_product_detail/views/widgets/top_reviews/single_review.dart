import 'package:flutter/material.dart';
import 'package:marketplace/shared/styles/style_constants.dart';

import '../../../../../shared/styles/tokosmile_colors.dart';
import 'comment_widget.dart';

class SingleReview extends StatelessWidget {
  final String backgroundImage;
  final String customerName;
  const SingleReview(
      {Key? key, required this.backgroundImage, required this.customerName})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
          vertical: StyleConstants.defaultSize * 1.5),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage(backgroundImage),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    customerName,
                    style: const TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
              const Row(
                children: [
                  Icon(Icons.star, color: TokosmileColors.gold, size: 20),
                  SizedBox(width: 5),
                  Text(
                    '5.0',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(width: 10),
                  Icon(Icons.more_horiz_outlined,
                      color: TokosmileColors.defaultGrey)
                ],
              ),
            ],
          ),
          const SizedBox(height: 15),
          const Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CommentWidget(text: 'Product in good condition', width: 130),
              CommentWidget(text: 'Very fast delivery', width: 100),
              CommentWidget(text: 'Fast seller response', width: 110),
            ],
          ),
          const SizedBox(height: 15),
          const Text(
            'According to my expectation. This is the best',
            style: TextStyle(fontWeight: FontWeight.w500, fontSize: 14),
          ),
          const SizedBox(height: 5),
          const Text(
            'Thank you',
            style: TextStyle(fontWeight: FontWeight.w500, fontSize: 14),
          ),
          const SizedBox(height: 20),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(Icons.thumb_up, color: TokosmileColors.green, size: 16),
                  SizedBox(width: 10),
                  Text(
                    'Helpful ?',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: TokosmileColors.green,
                        fontSize: 14),
                  ),
                ],
              ),
              Text(
                'Yesterday',
                style:
                    TextStyle(color: TokosmileColors.defaultGrey, fontSize: 14),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
