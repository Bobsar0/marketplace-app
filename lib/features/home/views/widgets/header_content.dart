import 'package:flutter/material.dart';

import '../../../../shared/styles/style_constants.dart';
import '../../models/header_data.dart';
import 'header_button.dart';
import 'header_tab_dot.dart';
import 'home_app_bar.dart';

class HeaderContent extends StatelessWidget {
  final HeaderData data;

  const HeaderContent(this.data, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HomeAppBar(color: Color(data.colorHex)),
      body: Column(
        children: [
          // SizedBox(height: 100),
          Stack(
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
                          fontSize: data.id == 0 ? 40 : 25,
                          fontWeight: FontWeight.bold),
                    ),
                    Visibility(
                        visible: data.footer != null,
                        child: Text(
                          data.footer ?? '',
                          style: DefaultTextStyle.of(context)
                              .style
                              .copyWith(fontSize: 12),
                        )),
                    const SizedBox(height: StyleConstants.defaultSize * 1.5),
                    const HeaderButton(),
                  ],
                ),
              ),
              Positioned(
                  top: StyleConstants.defaultSize / 2,
                  right: StyleConstants.defaultSize,
                  child: HeaderTabDots()),
            ],
          ),
        ],
      ),
    );
  }
}
