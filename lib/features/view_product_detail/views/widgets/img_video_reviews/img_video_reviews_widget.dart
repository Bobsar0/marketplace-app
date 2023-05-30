import 'package:flutter/material.dart';
import 'package:marketplace/shared/styles/style_constants.dart';

import '../../../../../shared/styles/tokosmile_colors.dart';
import 'img_thumbnail_widgets.dart';

class ImgVideoReviewWidget extends StatelessWidget {
  final List<String>? assetPaths;

  const ImgVideoReviewWidget({Key? key, this.assetPaths}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Align(
            alignment: Alignment.centerLeft,
            child: Text('Reviews with images & videos',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: TokosmileColors.eerieBlack)),
          ),
          const SizedBox(height: StyleConstants.defaultSize * 2),
          assetPaths == null || assetPaths!.isEmpty
              ? const Text('No image thumbnails')
              : Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ...List.generate(
                        assetPaths!.length,
                        (index) => index == assetPaths!.length - 1
                            ? StackedImgThumbnail(
                                imgPath: assetPaths![index],
                                child: const Text(
                                  '132+',
                                  style: TextStyle(
                                      color: TokosmileColors.white,
                                      backgroundColor: Colors.black),
                                ),
                              )
                            : ImgThumbnailWidget(assetPaths![index])),
                  ],
                )
        ]);
  }
}
