import 'controller/search_controller.dart';
import 'package:application/core/app_export.dart';
import 'package:application/widgets/custom_search_view.dart';
import 'package:flutter/material.dart';

class SearchScreen extends GetWidget<SearchController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        body: Container(
          width: size.width,
          child: SingleChildScrollView(
            child: Container(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: size.width,
                    margin: getMargin(
                      left: 16,
                      top: 17,
                      right: 16,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        CustomSearchView(
                          width: 291,
                          focusNode: FocusNode(),
                          controller: controller.searchController,
                          hintText: "lbl_nike_air_max".tr,
                          variant: SearchViewVariant.OutlineLightblueA200,
                          fontStyle: SearchViewFontStyle.PoppinsBold12,
                          prefix: Container(
                            margin: getMargin(
                              left: 17,
                              top: 13,
                              right: 9,
                              bottom: 17,
                            ),
                            child: CommonImageView(
                              svgPath: ImageConstant.imgSearchLightBlueA200,
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
                          suffix: Padding(
                            padding: EdgeInsets.only(
                              right: getHorizontalSize(
                                15.00,
                              ),
                            ),
                            child: IconButton(
                              onPressed: controller.searchController.clear,
                              icon: Icon(
                                Icons.clear,
                                color: Colors.grey.shade600,
                              ),
                            ),
                          ),
                          suffixConstraints: BoxConstraints(
                            minWidth: getHorizontalSize(
                              10.00,
                            ),
                            minHeight: getVerticalSize(
                              10.00,
                            ),
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            top: 13,
                            bottom: 13,
                          ),
                          child: CommonImageView(
                            svgPath: ImageConstant.imgMicrophone,
                            height: getVerticalSize(
                              18.00,
                            ),
                            width: getHorizontalSize(
                              13.00,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: getVerticalSize(
                      1.00,
                    ),
                    width: getHorizontalSize(
                      369.00,
                    ),
                    margin: getMargin(
                      left: 6,
                      top: 17,
                    ),
                    decoration: BoxDecoration(
                      color: ColorConstant.blue50,
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      margin: getMargin(
                        top: 9,
                      ),
                      padding: getPadding(
                        left: 16,
                        top: 20,
                        bottom: 21,
                      ),
                      decoration: AppDecoration.txtFillWhiteA700,
                      child: Text(
                        "msg_nike_air_max_272".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtPoppinsRegular12.copyWith(
                          letterSpacing: 0.50,
                          height: 1.00,
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      padding: getPadding(
                        left: 16,
                        top: 21,
                        bottom: 19,
                      ),
                      decoration: AppDecoration.txtFillWhiteA700,
                      child: Text(
                        "msg_nike_air_vaporm".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtPoppinsRegular12.copyWith(
                          letterSpacing: 0.50,
                          height: 1.00,
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      padding: getPadding(
                        left: 16,
                        top: 20,
                        bottom: 21,
                      ),
                      decoration: AppDecoration.txtFillWhiteA700,
                      child: Text(
                        "msg_nike_air_max_272".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtPoppinsRegular12.copyWith(
                          letterSpacing: 0.50,
                          height: 1.00,
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      padding: getPadding(
                        left: 16,
                        top: 20,
                        bottom: 21,
                      ),
                      decoration: AppDecoration.txtFillWhiteA700,
                      child: Text(
                        "msg_nike_air_max_273".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtPoppinsRegular12.copyWith(
                          letterSpacing: 0.50,
                          height: 1.00,
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      padding: getPadding(
                        left: 16,
                        top: 21,
                        bottom: 19,
                      ),
                      decoration: AppDecoration.txtFillWhiteA700,
                      child: Text(
                        "msg_nike_air_vaporm2".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtPoppinsRegular12.copyWith(
                          letterSpacing: 0.50,
                          height: 1.00,
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      margin: getMargin(
                        bottom: 20,
                      ),
                      padding: getPadding(
                        left: 16,
                        top: 21,
                        bottom: 19,
                      ),
                      decoration: AppDecoration.txtFillWhiteA700,
                      child: Text(
                        "msg_nike_air_max_97".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtPoppinsRegular12.copyWith(
                          letterSpacing: 0.50,
                          height: 1.00,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
