import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

import '../../../../../shared/styles/tokosmile_colors.dart';
import '../../../../../shared/utils/locator.dart';
import '../../../controllers/home_controller.dart';
import 'banner_app_bar.dart';

/// Delegate for configuring the SliverPersistentHeader for the Banner App Bar
class BannerSliverHeaderDelegate extends SliverPersistentHeaderDelegate {
  final HomeController _controller = Locator.getController();

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    final reqOffsetDist = maxExtent - minExtent;

    return Obx(() => BannerAppBar(
          color: shrinkOffset > reqOffsetDist
              ? TokosmileColors.white
              : _controller.currHeaderColor.value,
        ));
  }

  @override
  double get maxExtent => _controller.maxScrollExtent;

  @override
  double get minExtent => _controller.minScrollExtent;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }
}
