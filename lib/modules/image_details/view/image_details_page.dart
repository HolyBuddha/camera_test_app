import 'package:camera_test_app/utils/constants/app_text.dart';
import 'package:flutter/material.dart';
import 'package:camera_test_app/modules/image_details/controller/image_details_controller.dart';
import 'package:camera_test_app/modules/image_details/view/widgets/image_card_widget.dart';
import 'package:get/get.dart';
import 'package:camera_test_app/data/models/image_data_info.dart';

class ImageDetailsPage extends GetView<ImageDetailsController> {
  const ImageDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(TextConsts.textImageDetailsTitle),
          centerTitle: true,
        ),
        body: Center(
          child: Obx(() => controller.isLoading.isTrue
              ? const CircularProgressIndicator()
              : Container(child: openImageData(controller.imageData.value))),
        ));
  }
}

openImageData(ImageDataInfo? imageData) {
  if (imageData != null) {
    return ImageCardWidget(imageData: imageData);
  } else {
    return const Text(TextConsts.textErrorServer);
  }
}
