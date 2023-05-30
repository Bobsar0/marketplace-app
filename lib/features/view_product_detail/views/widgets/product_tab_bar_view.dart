import 'package:flutter/material.dart';
import 'package:marketplace/features/view_product_detail/views/widgets/about_item_content.dart';
import 'package:marketplace/shared/styles/style_constants.dart';
import 'package:marketplace/shared/styles/text_constants.dart';

import '../../../../shared/styles/tokosmile_colors.dart';
import '../../../home/models/product.dart';

class ProductTabBarView extends StatelessWidget {
  final Product product;

  const ProductTabBarView(this.product, {super.key});

  @override
  Widget build(BuildContext context) {
    return const DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: TabBar(
          labelPadding: EdgeInsets.only(bottom: 10),
          dividerColor: TokosmileColors.darkGrey,
          labelColor: TokosmileColors.green,
          unselectedLabelColor: TokosmileColors.defaultGrey,
          unselectedLabelStyle: TextStyle(color: TokosmileColors.defaultGrey),
          indicatorWeight: 3,
          indicatorColor: TokosmileColors.green,
          tabs: [
            Text(
              'About Item',
              style: TextStyle(color: TokosmileColors.green, fontSize: 18),
            ),
            Text(
              'Reviews',
              style: TextStyle(color: TokosmileColors.darkGrey, fontSize: 18),
            ),
          ],
        ),
        body: TabBarView(
          physics: NeverScrollableScrollPhysics(),
          children: [
            Padding(
              padding: EdgeInsets.only(
                  top: StyleConstants.defaultSize / 2,
                  bottom: StyleConstants.defaultSize),
              child: AboutItemContent(),
            ),
            Center(
              child: Text(TextConstants.unimplementedText),
            )
          ],
        ),
      ),
    );
  }
}
