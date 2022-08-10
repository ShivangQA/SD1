import '../controller/skype_integration_controller.dart';
import 'package:get/get.dart';

class SkypeIntegrationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SkypeIntegrationController());
  }
}
