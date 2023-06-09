import 'package:flutter/material.dart';

class ImgThumbnailWidget extends StatelessWidget {
  final String imgPath;
  final bool shouldBlur;
  final double size;
  final double radius;

  const ImgThumbnailWidget(this.imgPath,
      {super.key, this.shouldBlur = false, this.size = 60, this.radius = 10});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: size,
        height: size,
        alignment: Alignment.center,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(radius),
            image:
                DecorationImage(image: AssetImage(imgPath), fit: BoxFit.cover)),
        child: shouldBlur
            ? Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(radius),
                    color: Colors.black.withOpacity(0.6)),
              )
            : const SizedBox());
  }
}

class StackedImgThumbnail extends StatelessWidget {
  final String imgPath;
  final Widget child;

  const StackedImgThumbnail(
      {Key? key, required this.imgPath, required this.child})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [ImgThumbnailWidget(imgPath, shouldBlur: true), child],
    );
  }
}
