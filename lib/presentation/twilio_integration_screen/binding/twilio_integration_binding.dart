import '../controller/twilio_integration_controller.dart';
import 'package:get/get.dart';

class TwilioIntegrationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TwilioIntegrationController());
  }
}
