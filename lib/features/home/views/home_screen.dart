import 'package:flutter/material.dart';
import 'package:marketplace/features/home/controllers/home_controller.dart';
import 'package:marketplace/features/home/views/widgets/header_content.dart';
import 'package:marketplace/shared/utils/locator.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  final HomeController _controller = Locator.getController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SizedBox(
      width: double.infinity,
      child: Column(
        children: [
          Expanded(
            child: PageView.builder(
              onPageChanged: (value) => _controller.currHeaderIndex(value),
              itemCount: _controller.headerDataList.length,
              itemBuilder: (context, index) => HeaderContent(
                _controller.headerDataList[index],
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
