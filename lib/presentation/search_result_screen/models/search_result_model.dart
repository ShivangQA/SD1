import 'package:get/get.dart';import 'package:application/data/models/selectionPopupModel/selection_popup_model.dart';import 'search_result_item_model.dart';class SearchResultModel {RxList<SelectionPopupModel> dropdownItemList = [SelectionPopupModel(id:1,title:"test",isSelected:true,),SelectionPopupModel(id:2,title:"test1",),SelectionPopupModel(id:3,title:"test2",)].obs;

RxList<SearchResultItemModel> searchResultItemList = RxList.filled(6,SearchResultItemModel());

 }
