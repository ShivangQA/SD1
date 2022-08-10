import '/core/app_export.dart';import 'package:application/presentation/search_result_screen/models/search_result_model.dart';import 'package:flutter/material.dart';class SearchResultController extends GetxController {TextEditingController searchController = TextEditingController();

Rx<SearchResultModel> searchResultModelObj = SearchResultModel().obs;

SelectionPopupModel? selectedDropDownValue;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); searchController.dispose(); } 
onSelected(dynamic value) { selectedDropDownValue = value as SelectionPopupModel; searchResultModelObj.value.dropdownItemList.forEach((element) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}}); searchResultModelObj.value.dropdownItemList.refresh(); } 
 }
