import 'package:marketplace/features/home/models/banner.dart';
import 'package:marketplace/shared/mock/mock_banners.dart';

class BannerService {
  List<BannerData> getBanners() {
    return MockBanners.bannerCollection;
  }
}
