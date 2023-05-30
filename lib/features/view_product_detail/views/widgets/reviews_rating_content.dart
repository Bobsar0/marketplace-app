import 'package:flutter/material.dart';

import '../../../../shared/styles/tokosmile_colors.dart';
import 'ratings_viewer.dart';

class ReviewsRatingContent extends StatelessWidget {
  const ReviewsRatingContent({Key? key}) : super(key: key);

  static const double _totalReviews = 1800;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const Align(
          alignment: Alignment.topLeft,
          child: Text(
            'Reviews & Ratings',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const SizedBox(height: 10),
        Row(
          children: [
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Row(
                  children: [
                    Text(
                      '4.9',
                      style:
                          TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(width: 10),
                    Padding(
                      padding: EdgeInsets.only(top: 8),
                      child: Text(
                        '/ 5.0',
                        style: TextStyle(
                            fontSize: 16, color: TokosmileColors.darkGrey),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Row(
                  children: [
                    for (int i = 0; i < 4; i++)
                      const Icon(Icons.star, color: TokosmileColors.gold),
                    const Icon(Icons.star_half, color: TokosmileColors.gold),
                  ],
                ),
                const SizedBox(height: 45),
                const Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    '2.3k+ Reviews',
                    style: TextStyle(
                        color: TokosmileColors.defaultGrey,
                        fontSize: 15,
                        fontWeight: FontWeight.w500),
                  ),
                )
              ],
            ),
            const SizedBox(width: 15),
            const Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RatingsViewer(
                      rateNumber: 5,
                      numberOfReviews: '1.5k',
                      percentage: 1500 / _totalReviews),
                  SizedBox(height: 10),
                  RatingsViewer(
                      rateNumber: 4,
                      numberOfReviews: '710',
                      percentage: 710 / _totalReviews),
                  SizedBox(height: 10),
                  RatingsViewer(
                      rateNumber: 3,
                      numberOfReviews: '140',
                      percentage: 250 / _totalReviews),
                  SizedBox(height: 10),
                  RatingsViewer(
                      rateNumber: 2,
                      numberOfReviews: '10',
                      percentage: 120 / _totalReviews),
                  SizedBox(height: 10),
                  RatingsViewer(
                      rateNumber: 1,
                      numberOfReviews: '4',
                      percentage: 20 / _totalReviews)
                ],
              ),
            )
          ],
        )
      ],
    );
  }
}
