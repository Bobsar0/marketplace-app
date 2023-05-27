import 'package:flutter/material.dart';
import 'package:marketplace/views/home/widgets/app_bar_icon.dart';

class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Color color;

  const HomeAppBar({Key? key, required this.color}) : super(key: key);

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
                  prefixIcon: const Icon(Icons.search),
                  hintText: 'Search ..'),
            ),
          ),
          SizedBox(width: 10),
          const AppBarIcon(text: '1', icon: Icons.lock_outline),
          const AppBarIcon(text: '9+', icon: Icons.chat_outlined),
          // SizedBox(width: 1)
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(100);
}
