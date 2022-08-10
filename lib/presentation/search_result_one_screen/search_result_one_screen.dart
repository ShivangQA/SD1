import 'controller/search_result_one_controller.dart';
import 'package:application/core/app_export.dart';
import 'package:application/widgets/custom_button.dart';
import 'package:application/widgets/custom_drop_down.dart';
import 'package:application/widgets/custom_icon_button.dart';
import 'package:application/widgets/custom_search_view.dart';
import 'package:flutter/material.dart';

class SearchResultOneScreen extends GetWidget<SearchResultOneController> {
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
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: size.width,
                    margin: getMargin(
                      left: 16,
                      top: 16,
                      right: 16,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        CustomSearchView(
                          width: 263,
                          focusNode: FocusNode(),
                          controller: controller.searchFormController,
                          hintText: "lbl_search_product".tr,
                          prefix: Container(
                            margin: getMargin(
                              left: 17,
                              top: 16,
                              right: 9,
                              bottom: 16,
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
                        ),
                        Padding(
                          padding: getPadding(
                            top: 14,
                            bottom: 14,
                          ),
                          child: CommonImageView(
                            svgPath: ImageConstant.imgSort,
                            height: getSize(
                              18.00,
                            ),
                            width: getSize(
                              18.00,
                            ),
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            top: 14,
                            bottom: 12,
                          ),
                          child: CommonImageView(
                            svgPath: ImageConstant.imgVectorLightBlueA20020X20,
                            height: getSize(
                              20.00,
                            ),
                            width: getSize(
                              20.00,
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
                    width: size.width,
                    margin: getMargin(
                      top: 16,
                    ),
                    decoration: BoxDecoration(
                      color: ColorConstant.blue50,
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      left: 16,
                      top: 19,
                      right: 16,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: getPadding(
                            bottom: 1,
                          ),
                          child: Text(
                            "lbl_0_result".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style:
                                AppStyle.txtPoppinsBold12Indigo90087.copyWith(
                              letterSpacing: 0.50,
                              height: 1.00,
                            ),
                          ),
                        ),
                        CustomDropDown(
                          width: 97,
                          focusNode: FocusNode(),
                          icon: Container(
                            margin: getMargin(
                              left: 16,
                            ),
                            child: CommonImageView(
                              svgPath: ImageConstant.imgArrowdownBluegray300,
                            ),
                          ),
                          hintText: "lbl_man_shoes".tr,
                          margin: getMargin(
                            top: 1,
                          ),
                          items: controller
                              .searchResultOneModelObj.value.dropdownItemList,
                          onChanged: (value) {
                            controller.onSelected(value);
                          },
                        ),
                      ],
                    ),
                  ),
                  CustomIconButton(
                    height: 72,
                    width: 72,
                    margin: getMargin(
                      left: 16,
                      top: 137,
                      right: 16,
                    ),
                    variant: IconButtonVariant.OutlineLightblueA2003d,
                    child: CommonImageView(
                      svgPath: ImageConstant.imgAirplane72X72,
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      left: 16,
                      top: 21,
                      right: 16,
                    ),
                    child: Text(
                      "msg_product_not_fou".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtPoppinsBold24Indigo900.copyWith(
                        letterSpacing: 0.50,
                        height: 1.00,
                      ),
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      left: 16,
                      top: 20,
                      right: 16,
                    ),
                    child: Text(
                      "msg_thank_you_for_s".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtPoppinsRegular12.copyWith(
                        letterSpacing: 0.50,
                        height: 1.00,
                      ),
                    ),
                  ),
                  CustomButton(
                    width: 343,
                    text: "lbl_back_to_home".tr,
                    margin: getMargin(
                      left: 16,
                      top: 19,
                      right: 16,
                      bottom: 20,
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
