import 'package:camera_test_app/routes/app_routes.dart';
import 'package:camera_test_app/utils/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:camera_test_app/utils/constants/app_text.dart';
import 'package:camera_test_app/modules/home/controller/home_controller.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(TextConsts.textHomePageTitle),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Text(TextConsts.textForCameraButton),
            ElevatedButton(
              onPressed: () async {
                await controller.getImagePath(ImageSource.camera);
                if (controller.imagePath.isNotEmpty) {
                  Get.toNamed(AppRoutes.imageDetails,
                      arguments: {'imagePath': controller.imagePath});
                }
              },
              child: const Icon(Icons.camera_alt, color: Colors.black),
              style: ElevatedButton.styleFrom(
                  shape: const CircleBorder(),
                  padding: const EdgeInsets.all(20),
                  backgroundColor: AppColors.buttonColor,
                  foregroundColor: AppColors.buttonColorWhenTap),
            ),
          ],
        ),
      ),
    );
  }
}
