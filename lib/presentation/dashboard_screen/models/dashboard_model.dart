import 'package:get/get.dart';import 'sliderofferbannerti_item_model.dart';import 'flashsale_item_model.dart';import 'megasale_item_model.dart';import 'dashboard_item_model.dart';class DashboardModel {RxList<SliderofferbannertiItemModel> sliderofferbannertiItemList = RxList.filled(1,SliderofferbannertiItemModel());

RxList<FlashsaleItemModel> flashsaleItemList = RxList.filled(3,FlashsaleItemModel());

RxList<MegasaleItemModel> megasaleItemList = RxList.filled(3,MegasaleItemModel());

RxList<DashboardItemModel> dashboardItemList = RxList.filled(4,DashboardItemModel());

 }
