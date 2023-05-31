import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../shared/views/widgets/app_bar_stacked_icon.dart';

/// AppBar used in banner implementation in the home screen
class BannerAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Color color;
  final PreferredSizeWidget? bottom;

  const BannerAppBar({super.key, required this.color, this.bottom});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      elevation: 0.0,
      toolbarHeight: 80,
      backgroundColor: color,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                  contentPadding: const EdgeInsets.symmetric(vertical: 15),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8)),
                  prefixIcon: const Icon(CupertinoIcons.search),
                  hintText: 'Search ..'),
            ),
          ),
          const SizedBox(width: 10),
          const AppBarStackedIcon(text: '1', icon: Icons.shopping_bag_outlined),
          const AppBarStackedIcon(text: '9+', icon: Icons.chat_outlined),
        ],
      ),
      bottom: bottom,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
