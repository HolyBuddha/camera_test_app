// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:camera_test_app/data/models/image_data_info.dart';
import 'package:camera_test_app/modules/image_details/view/widgets/linky_text_widget.dart';
import 'package:flutter/material.dart';

class ImageCardWidget extends StatelessWidget {
  final ImageDataInfo imageData;

  const ImageCardWidget({
    super.key,
    required this.imageData,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(child: Image.network(imageData.url)),
          LinkyTextWidget(imagerUrl: imageData.url)
        ],
      ),
    );
  }
}
