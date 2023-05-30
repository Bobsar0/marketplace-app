import 'package:flutter/material.dart';
import 'package:marketplace/features/view_product_detail/views/widgets/top_reviews/single_review.dart';
import 'package:marketplace/shared/styles/assets.dart';

import '../../../../../shared/styles/tokosmile_colors.dart';

class TopReviews extends StatelessWidget {
  const TopReviews({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Top Reviews',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Showing 3 of 2.3k+ reviews',
                  style: TextStyle(
                      color: TokosmileColors.darkGrey,
                      fontSize: 14,
                      fontWeight: FontWeight.w500),
                ),
              ],
            ),
            Container(
              decoration: BoxDecoration(
                  color: TokosmileColors.imgBackgroundGrey,
                  borderRadius: BorderRadius.circular(10)),
              height: 40,
              width: 120,
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Popular',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    Icon(
                      Icons.keyboard_arrow_down_outlined,
                      color: TokosmileColors.darkGrey,
                    )
                  ],
                ),
              ),
            )
          ],
        ),
        const SingleReview(
          backgroundImage: Assets.avatar,
          customerName: 'Eren Y****r',
        ),
        const Divider(),
        const SingleReview(
            backgroundImage: Assets.avatar, customerName: 'Annie Le***hart'),
        const Divider(),
        const SingleReview(
            backgroundImage: Assets.avatar, customerName: 'John Do***e')
      ],
    );
  }
}
