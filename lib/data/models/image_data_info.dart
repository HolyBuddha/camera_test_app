// ignore_for_file: public_member_api_docs, sort_constructors_first
class ImageDataInfo {
  final String filename;
  final String name;
  final String extension;
  final String url;
  final int size;

  ImageDataInfo({
    required this.filename,
    required this.name,
    required this.extension,
    required this.url,
    required this.size,
  });

  factory ImageDataInfo.fromJson(Map<String, dynamic> json) =>
    ImageDataInfo(
        filename: json['data']['image']['filename'],
        name: json['data']['image']['name'],
        extension: json['data']['image']['extension'],
        url: json['data']['image']['url'],
        size: json['data']['size']);
  }

