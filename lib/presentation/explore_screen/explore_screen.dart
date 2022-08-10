import '../explore_screen/widgets/listairplane_item_widget.dart';
import '../explore_screen/widgets/listarrowdown_item_widget.dart';
import 'controller/explore_controller.dart';
import 'models/listairplane_item_model.dart';
import 'models/listarrowdown_item_model.dart';
import 'package:application/core/app_export.dart';
import 'package:application/widgets/custom_icon_button.dart';
import 'package:application/widgets/custom_search_view.dart';
import 'package:flutter/material.dart';

class ExploreScreen extends GetWidget<ExploreController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        body: Column(
          children: [
            Expanded(
              child: Container(
                width: size.width,
                child: SingleChildScrollView(
                  child: Container(
                    height: getVerticalSize(
                      752.00,
                    ),
                    width: size.width,
                    margin: getMargin(
                      top: 16,
                    ),
                    child: Stack(
                      alignment: Alignment.bottomLeft,
                      children: [
                        Align(
                          alignment: Alignment.topCenter,
                          child: Container(
                            margin: getMargin(
                              left: 16,
                              right: 16,
                              bottom: 10,
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Align(
                                  alignment: Alignment.center,
                                  child: Container(
                                    width: size.width,
                                    margin: getMargin(
                                      right: 2,
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        CustomSearchView(
                                          width: 263,
                                          focusNode: FocusNode(),
                                          controller:
                                              controller.searchController,
                                          hintText: "lbl_search_product".tr,
                                          prefix: Container(
                                            margin: getMargin(
                                              left: 17,
                                              top: 16,
                                              right: 9,
                                              bottom: 16,
                                            ),
                                            child: CommonImageView(
                                              svgPath: ImageConstant
                                                  .imgSearchLightBlueA200,
                                            ),
                                          ),
                                          prefixConstraints: BoxConstraints(
                                            minWidth: getSize(
                                              14.00,
                                            ),
                                            minHeight: getSize(
                                              14.00,
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: getPadding(
                                            top: 14,
                                            bottom: 12,
                                          ),
                                          child: CommonImageView(
                                            svgPath: ImageConstant
                                                .imgVectorBluegray300,
                                            height: getVerticalSize(
                                              18.00,
                                            ),
                                            width: getHorizontalSize(
                                              20.00,
                                            ),
                                          ),
                                        ),
                                        Container(
                                          height: getVerticalSize(
                                            22.00,
                                          ),
                                          width: getHorizontalSize(
                                            18.00,
                                          ),
                                          margin: getMargin(
                                            top: 11,
                                            bottom: 13,
                                          ),
                                          child: Stack(
                                            alignment: Alignment.topRight,
                                            children: [
                                              Align(
                                                alignment: Alignment.bottomLeft,
                                                child: Padding(
                                                  padding: getPadding(
                                                    top: 10,
                                                    right: 10,
                                                  ),
                                                  child: CommonImageView(
                                                    svgPath: ImageConstant
                                                        .imgNotification,
                                                    height: getVerticalSize(
                                                      20.00,
                                                    ),
                                                    width: getHorizontalSize(
                                                      17.00,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Align(
                                                alignment: Alignment.topRight,
                                                child: Container(
                                                  height: getSize(
                                                    8.00,
                                                  ),
                                                  width: getSize(
                                                    8.00,
                                                  ),
                                                  margin: getMargin(
                                                    left: 10,
                                                    bottom: 10,
                                                  ),
                                                  decoration: BoxDecoration(
                                                    color:
                                                        ColorConstant.pink300,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                      getHorizontalSize(
                                                        4.00,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(
                                    top: 34,
                                    right: 10,
                                  ),
                                  child: Text(
                                    "lbl_man_fashion".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtPoppinsBold14.copyWith(
                                      letterSpacing: 0.50,
                                      height: 1.00,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(
                                    top: 16,
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Container(
                                        height: getVerticalSize(
                                          204.00,
                                        ),
                                        width: getHorizontalSize(
                                          161.00,
                                        ),
                                        child: Obx(
                                          () => ListView.builder(
                                            padding: getPadding(
                                              bottom: 9,
                                            ),
                                            scrollDirection: Axis.horizontal,
                                            physics: BouncingScrollPhysics(),
                                            itemCount: controller
                                                .exploreModelObj
                                                .value
                                                .listarrowdownItemList
                                                .length,
                                            itemBuilder: (context, index) {
                                              ListarrowdownItemModel model =
                                                  controller
                                                          .exploreModelObj
                                                          .value
                                                          .listarrowdownItemList[
                                                      index];
                                              return ListarrowdownItemWidget(
                                                model,
                                              );
                                            },
                                          ),
                                        ),
                                      ),
                                      Container(
                                        margin: getMargin(
                                          bottom: 114,
                                        ),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            CustomIconButton(
                                              height: 70,
                                              width: 70,
                                              padding: IconButtonPadding
                                                  .PaddingAll22,
                                              child: CommonImageView(
                                                svgPath: ImageConstant
                                                    .imgVectorLightBlueA20020X22,
                                              ),
                                            ),
                                            Align(
                                              alignment: Alignment.center,
                                              child: Padding(
                                                padding: getPadding(
                                                  left: 4,
                                                  top: 10,
                                                  right: 4,
                                                ),
                                                child: Text(
                                                  "lbl_man_t_shirt".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtPoppinsRegular10
                                                      .copyWith(
                                                    letterSpacing: 0.50,
                                                    height: 1.00,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        margin: getMargin(
                                          bottom: 114,
                                        ),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            CustomIconButton(
                                              height: 70,
                                              width: 70,
                                              alignment: Alignment.centerLeft,
                                              child: CommonImageView(
                                                svgPath:
                                                    ImageConstant.imgTicket,
                                              ),
                                            ),
                                            Padding(
                                              padding: getPadding(
                                                left: 6,
                                                top: 10,
                                                right: 6,
                                              ),
                                              child: Text(
                                                "lbl_man_shoes".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtPoppinsRegular10
                                                    .copyWith(
                                                  letterSpacing: 0.50,
                                                  height: 1.00,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(
                                    top: 53,
                                    right: 10,
                                  ),
                                  child: Text(
                                    "lbl_woman_fashion".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtPoppinsBold14.copyWith(
                                      letterSpacing: 0.50,
                                      height: 1.00,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(
                                    top: 16,
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Container(
                                        height: getVerticalSize(
                                          204.00,
                                        ),
                                        width: getHorizontalSize(
                                          252.00,
                                        ),
                                        child: Obx(
                                          () => ListView.builder(
                                            padding: getPadding(
                                              bottom: 22,
                                            ),
                                            scrollDirection: Axis.horizontal,
                                            physics: BouncingScrollPhysics(),
                                            itemCount: controller
                                                .exploreModelObj
                                                .value
                                                .listairplaneItemList
                                                .length,
                                            itemBuilder: (context, index) {
                                              ListairplaneItemModel model =
                                                  controller
                                                          .exploreModelObj
                                                          .value
                                                          .listairplaneItemList[
                                                      index];
                                              return ListairplaneItemWidget(
                                                model,
                                              );
                                            },
                                          ),
                                        ),
                                      ),
                                      Container(
                                        margin: getMargin(
                                          bottom: 114,
                                        ),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            CustomIconButton(
                                              height: 70,
                                              width: 70,
                                              alignment: Alignment.centerLeft,
                                              child: CommonImageView(
                                                svgPath:
                                                    ImageConstant.imgTrash70X70,
                                              ),
                                            ),
                                            Padding(
                                              padding: getPadding(
                                                left: 24,
                                                top: 10,
                                                right: 23,
                                              ),
                                              child: Text(
                                                "lbl_skirt".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtPoppinsRegular10
                                                    .copyWith(
                                                  letterSpacing: 0.50,
                                                  height: 1.00,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: ColorConstant.whiteA700,
              ),
              child: Container(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      height: getVerticalSize(
                        1.00,
                      ),
                      width: size.width,
                      decoration: BoxDecoration(
                        color: ColorConstant.blue50,
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        top: 25,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Container(
                            margin: getMargin(
                              top: 3,
                              bottom: 2,
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: getPadding(
                                    left: 6,
                                    right: 5,
                                  ),
                                  child: CommonImageView(
                                    svgPath: ImageConstant.imgHome,
                                    height: getSize(
                                      18.00,
                                    ),
                                    width: getSize(
                                      18.00,
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                    padding: getPadding(
                                      top: 9,
                                    ),
                                    child: Text(
                                      "lbl_home".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style:
                                          AppStyle.txtPoppinsRegular10.copyWith(
                                        letterSpacing: 0.50,
                                        height: 1.00,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin: getMargin(
                              top: 3,
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: getPadding(
                                    left: 11,
                                    right: 10,
                                  ),
                                  child: CommonImageView(
                                    svgPath: ImageConstant
                                        .imgSearchLightBlueA20018X18,
                                    height: getSize(
                                      18.00,
                                    ),
                                    width: getSize(
                                      18.00,
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                    padding: getPadding(
                                      top: 10,
                                    ),
                                    child: Text(
                                      "lbl_explore".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle
                                          .txtPoppinsBold10LightblueA200
                                          .copyWith(
                                        letterSpacing: 0.50,
                                        height: 1.00,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin: getMargin(
                              top: 3,
                              bottom: 2,
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Align(
                                  alignment: Alignment.centerRight,
                                  child: Padding(
                                    padding: getPadding(
                                      left: 2,
                                      right: 1,
                                    ),
                                    child: CommonImageView(
                                      svgPath: ImageConstant.imgCart18X18,
                                      height: getSize(
                                        18.00,
                                      ),
                                      width: getSize(
                                        18.00,
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(
                                    top: 9,
                                  ),
                                  child: Text(
                                    "lbl_cart".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style:
                                        AppStyle.txtPoppinsRegular10.copyWith(
                                      letterSpacing: 0.50,
                                      height: 1.00,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin: getMargin(
                              top: 3,
                              bottom: 2,
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Align(
                                  alignment: Alignment.center,
                                  child: Padding(
                                    padding: getPadding(
                                      left: 4,
                                      right: 3,
                                    ),
                                    child: CommonImageView(
                                      svgPath: ImageConstant.imgOffer1,
                                      height: getSize(
                                        18.00,
                                      ),
                                      width: getSize(
                                        18.00,
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(
                                    top: 9,
                                  ),
                                  child: Text(
                                    "lbl_offer".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style:
                                        AppStyle.txtPoppinsRegular10.copyWith(
                                      letterSpacing: 0.50,
                                      height: 1.00,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin: getMargin(
                              top: 2,
                              bottom: 2,
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: getPadding(
                                    left: 12,
                                    right: 11,
                                  ),
                                  child: CommonImageView(
                                    svgPath: ImageConstant.imgUser,
                                    height: getSize(
                                      20.00,
                                    ),
                                    width: getSize(
                                      20.00,
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                    padding: getPadding(
                                      top: 8,
                                    ),
                                    child: Text(
                                      "lbl_account".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style:
                                          AppStyle.txtPoppinsRegular10.copyWith(
                                        letterSpacing: 0.50,
                                        height: 1.00,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
