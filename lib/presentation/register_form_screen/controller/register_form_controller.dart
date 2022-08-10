import '/core/app_export.dart';
import 'package:application/presentation/register_form_screen/models/register_form_model.dart';
import 'package:flutter/material.dart';

class RegisterFormController extends GetxController {
  TextEditingController fullNameController = TextEditingController();

  TextEditingController emailController1 = TextEditingController();

  TextEditingController passwordController1 = TextEditingController();

  TextEditingController passwordAgainController = TextEditingController();

  Rx<RegisterFormModel> registerFormModelObj = RegisterFormModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    fullNameController.dispose();
    emailController1.dispose();
    passwordController1.dispose();
    passwordAgainController.dispose();
  }
}
