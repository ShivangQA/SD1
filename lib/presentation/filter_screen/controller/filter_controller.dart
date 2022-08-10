import '/core/app_export.dart';import 'package:application/presentation/filter_screen/models/filter_model.dart';import 'package:flutter/material.dart';class FilterController extends GetxController {TextEditingController newController = TextEditingController();

Rx<FilterModel> filterModelObj = FilterModel().obs;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); newController.dispose(); } 
 }
