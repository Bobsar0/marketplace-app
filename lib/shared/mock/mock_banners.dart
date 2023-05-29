import '../../features/home/models/banner.dart';
import '../styles/assets.dart';

class MockBanners {
  static final List<BannerData> get = <BannerData>[
    BannerData(
      id: 0,
      title: '#FASHION DAY',
      body: '80% OFF',
      footer: 'Discover fashion that suits to\nyour style',
      colorHex: 0xFFF0F0F0,
      imagePath: Assets.homeHeaderFashion,
    ),
    BannerData(
        id: 1,
        title: '#BEAUTY SALE',
        body: 'DISCOVER OUR\nBEAUTY SELECTION',
        colorHex: 0xFFEBE1E2,
        imagePath: Assets.homeHeaderCosmetics),
    BannerData(
        id: 2,
        title: '#SHOES SALE',
        body: 'DISCOVER OUR \nQUALITY SHOES',
        colorHex: 0xFF656B82,
        imagePath: Assets.homeHeaderShoes),
  ];
}
