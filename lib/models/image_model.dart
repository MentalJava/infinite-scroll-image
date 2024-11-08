class ImageModel {
  final String id;
  final String imageUrl;
  final int height;
  final int width;

  ImageModel({
    required this.height,
    required this.width,
    required this.imageUrl,
    required this.id,
  });

  factory ImageModel.fromJson(Map<String, dynamic> json) {
    return ImageModel(
      height: json['height'],
      width: json['width'],
      imageUrl: json['urls']['regular'],
      id: json['id'],
    );
  }
}
