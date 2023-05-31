import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:marketplace/shared/styles/tokosmile_colors.dart';

import '../../../../../shared/styles/style_constants.dart';
import '../../../../../shared/utils/locator.dart';
import '../../../controllers/home_controller.dart';
import '../../../models/banner.dart';
import 'banner_button.dart';
import 'banner_tab_dot.dart';

class BannerContent extends StatelessWidget {
  final BannerData data;

  BannerContent(this.data, {super.key});

  final HomeController _controller = Locator.getController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(data.colorHex),
      body: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            width: double.infinity,
            height: StyleConstants.defaultSize * 18,
            color: Color(data.colorHex),
          ),
          Positioned(
            top: StyleConstants.defaultSize * (data.id == 0 ? 4 : 1),
            right: -StyleConstants.defaultSize * 15,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 250,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(data.imagePath),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Positioned(
            left: StyleConstants.defaultSize * 2,
            top: StyleConstants.defaultSize / 2,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  data.title,
                  style: const TextStyle(
                      fontSize: 15, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 5),
                Text(
                  data.body,
                  style: TextStyle(
                      fontSize: data.id == 0 ? 35 : 20,
                      fontWeight: FontWeight.bold),
                ),
                Visibility(
                    visible: data.footer != null,
                    child: Text(
                      data.footer ?? '',
                      style: TextStyle(
                        fontSize: 12,
                        color: TokosmileColors.metallicBlack.withOpacity(0.6),
                      ),
                    )),
                SizedBox(
                    height: StyleConstants.defaultSize *
                        (data.footer != null ? 1.5 : 2)),
                const HeaderButton(),
              ],
            ),
          ),
          Positioned(
            top: StyleConstants.defaultSize / 2,
            right: StyleConstants.defaultSize,
            child: Obx(() {
              return BannerTabDots(
                activeIndex: _controller.currHeaderIndex.value,
                length: _controller.banners.length,
              );
            }),
          ),
        ],
      ),
    );
  }
}
