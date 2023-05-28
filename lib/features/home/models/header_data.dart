class HeaderData {
  final int id;
  final int colorHex;
  final String title;
  final String body;
  final String? footer;
  final String imagePath;

  HeaderData(
      {required this.id,
      required this.colorHex,
      required this.title,
      required this.body,
      this.footer,
      required this.imagePath});
}
