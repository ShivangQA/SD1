import '/core/app_export.dart';
import 'package:application/presentation/search_result_one_screen/models/search_result_one_model.dart';
import 'package:flutter/material.dart';

class SearchResultOneController extends GetxController {
  TextEditingController searchFormController = TextEditingController();

  Rx<SearchResultOneModel> searchResultOneModelObj = SearchResultOneModel().obs;

  SelectionPopupModel? selectedDropDownValue;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    searchFormController.dispose();
  }

  onSelected(dynamic value) {
    selectedDropDownValue = value as SelectionPopupModel;
    searchResultOneModelObj.value.dropdownItemList.forEach((element) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    });
    searchResultOneModelObj.value.dropdownItemList.refresh();
  }
}
