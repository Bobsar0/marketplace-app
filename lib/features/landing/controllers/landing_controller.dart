import 'package:get/get.dart';

class LandingController extends GetxController {
  RxInt currPageIndex = 0.obs;

  void onNavBarTapped(int index) => currPageIndex.call(index);
}
