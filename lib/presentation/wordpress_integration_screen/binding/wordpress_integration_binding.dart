import '../controller/wordpress_integration_controller.dart';
import 'package:get/get.dart';

class WordpressIntegrationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => WordpressIntegrationController());
  }
}
