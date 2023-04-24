import 'package:camera_test_app/utils/constants/app_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:linkfy_text/linkfy_text.dart';
import 'package:get/get.dart';

class LinkyTextWidget extends StatelessWidget {
  final String imagerUrl;

  const LinkyTextWidget({super.key, required this.imagerUrl});

  @override
  Widget build(BuildContext context) {
    return LinkifyText(
      imagerUrl,
      textAlign: TextAlign.center,
      linkStyle: const TextStyle(color: Colors.blue),
      onTap: (link) {
        Clipboard.setData(ClipboardData(text: link.value)).then((_) {
          Get.snackbar(TextConsts.textUrlCopiedTitle, TextConsts.textUrlCopiedMessage);
        });
      },
    );
  }
}
