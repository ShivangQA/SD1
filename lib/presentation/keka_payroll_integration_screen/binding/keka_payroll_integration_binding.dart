import '../controller/keka_payroll_integration_controller.dart';
import 'package:get/get.dart';

class KekaPayrollIntegrationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => KekaPayrollIntegrationController());
  }
}
