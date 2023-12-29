import 'package:appwrite/appwrite.dart';
import 'package:get/get.dart';

Client client = Client();

class ClientController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    const endPoint = "https://cloud.appwrite.io/v1";
    const projectID = "65672e8455ec05e6c7cc";
    client
        .setEndpoint(endPoint)
        .setProject(projectID)
        .setSelfSigned(status: true);
  }
}
