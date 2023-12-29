import 'package:appwrite/appwrite.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'clientController.dart';

class StorageController extends ClientController {
  Storage? storage;

  @override
  void onInit() {
    super.onInit();
    // appwrite
    storage = Storage(client);
  }

  Future storeImage() async {
    try {
      final result = await storage!.createFile(
        bucketId: "65672e8455ec05e6c7cc",
        fileId: ID.unique(),
        file: InputFile.fromPath(
          path: '657010daaabc50286121',
          filename: 'image.jpg',
        ),
      );
      print("StorageController:: storeImage $result");
    } catch (error) {
      Get.defaultDialog(
        title: "Error Storage",
        titlePadding: const EdgeInsets.only(top: 15, bottom: 5),
        titleStyle: Get.context?.theme.textTheme.titleLarge,
        content: Text(
          "$error",
          style: Get.context?.theme.textTheme.bodyMedium,
          textAlign: TextAlign.center,
        ),
        contentPadding: const EdgeInsets.only(top: 5, left: 15, right: 15),
      );
    }
  }
}
