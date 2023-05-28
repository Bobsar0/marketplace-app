import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:marketplace/features/home/controllers/home_controller.dart';
import 'package:marketplace/shared/styles/style_constants.dart';
import 'package:marketplace/shared/styles/tokosmile_colors.dart';
import 'package:marketplace/shared/utils/locator.dart';

class HeaderTabDots extends StatelessWidget {
  HeaderTabDots({Key? key}) : super(key: key);

  final HomeController _controller = Locator.getController();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        _controller.headerDataList.length,
        (index) => HeaderTabDot(index),
      ),
    );
  }
}

class HeaderTabDot extends StatelessWidget {
  final int index;

  HeaderTabDot(this.index, {Key? key}) : super(key: key);

  final HomeController _controller = Locator.getController();

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return AnimatedContainer(
        duration: StyleConstants.animationDuration,
        margin: const EdgeInsets.only(right: StyleConstants.defaultSize / 2),
        width: _controller.currHeaderIndex.value == index
            ? StyleConstants.defaultSize
            : StyleConstants.defaultSize / 2,
        height: StyleConstants.defaultSize / 2,
        decoration: BoxDecoration(
            color: _controller.currHeaderIndex.value == index
                ? TokosmileColors.metallicBlack
                : TokosmileColors.disabledGrey,
            borderRadius:
                BorderRadius.circular(StyleConstants.defaultSize / 3)),
      );
    });
  }
}
