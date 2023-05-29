class BannerData {
  final int id;
  final int colorHex;
  final String title;
  final String body;
  final String? footer;
  final String imagePath;

  BannerData(
      {required this.id,
      required this.colorHex,
      required this.title,
      required this.body,
      this.footer,
      required this.imagePath});
}
