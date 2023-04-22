import 'package:camera_test_app/constants/text.dart';
import 'package:camera_test_app/modules/home/controllers/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(TextConsts.textForAppBarTitle),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Obx(() => controller.selectedImagePath.value == ''
                ? const Text(TextConsts.textForCameraButton)
                : Text(controller.selectedImagePath.string, textAlign: TextAlign.center,)),
            ElevatedButton(
              onPressed: () {
                controller.getImage(ImageSource.camera);
              },
              child: const Icon(Icons.camera_alt, color: Colors.black),
              style: ElevatedButton.styleFrom(
                shape: const CircleBorder(),
                padding: const EdgeInsets.all(20),
                backgroundColor: Colors.orange,
                foregroundColor: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
