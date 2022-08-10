import '../filter_screen/widgets/buyingformate_item_widget.dart';
import '../filter_screen/widgets/itemlocation_item_widget.dart';
import '../filter_screen/widgets/showonly_item_widget.dart';
import 'controller/filter_controller.dart';
import 'models/buyingformate_item_model.dart';
import 'models/itemlocation_item_model.dart';
import 'models/showonly_item_model.dart';
import 'package:application/core/app_export.dart';
import 'package:application/widgets/custom_button.dart';
import 'package:application/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class FilterScreen extends GetWidget<FilterController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        body: Container(
          margin: getMargin(
            left: 16,
            top: 27,
            right: 16,
            bottom: 22,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  width: size.width,
                  margin: getMargin(
                    left: 7,
                    right: 10,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: getPadding(
                          top: 3,
                          bottom: 1,
                        ),
                        child: CommonImageView(
                          svgPath: ImageConstant.imgClose,
                          height: getSize(
                            12.00,
                          ),
                          width: getSize(
                            12.00,
                          ),
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          left: 17,
                        ),
                        child: Text(
                          "lbl_filter_search".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtPoppinsBold16.copyWith(
                            letterSpacing: 0.50,
                            height: 1.00,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: SingleChildScrollView(
                    padding: getPadding(
                      top: 54,
                    ),
                    child: Container(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: getPadding(
                              right: 10,
                            ),
                            child: Text(
                              "lbl_price_range".tr,
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
                              top: 12,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Container(
                                  padding: getPadding(
                                    left: 16,
                                    top: 17,
                                    bottom: 18,
                                  ),
                                  decoration:
                                      AppDecoration.txtOutlineBlue50.copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.txtRoundedBorder5,
                                  ),
                                  child: Text(
                                    "lbl_1_245".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtPoppinsBold12Bluegray300
                                        .copyWith(
                                      letterSpacing: 0.50,
                                      height: 1.00,
                                    ),
                                  ),
                                ),
                                Container(
                                  padding: getPadding(
                                    left: 16,
                                    top: 17,
                                    bottom: 18,
                                  ),
                                  decoration:
                                      AppDecoration.txtOutlineBlue50.copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.txtRoundedBorder5,
                                  ),
                                  child: Text(
                                    "lbl_9_344".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtPoppinsBold12Bluegray300
                                        .copyWith(
                                      letterSpacing: 0.50,
                                      height: 1.00,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              top: 38,
                              right: 10,
                            ),
                            child: Text(
                              "lbl_condition".tr,
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
                              right: 10,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                CustomTextFormField(
                                  width: 59,
                                  focusNode: FocusNode(),
                                  controller: controller.newController,
                                  hintText: "lbl_new".tr,
                                  variant: TextFormFieldVariant.OutlineBlue50,
                                  textInputAction: TextInputAction.done,
                                ),
                                Container(
                                  margin: getMargin(
                                    left: 9,
                                  ),
                                  padding: getPadding(
                                    left: 16,
                                    top: 18,
                                    right: 16,
                                    bottom: 19,
                                  ),
                                  decoration: AppDecoration
                                      .txtFillLightblueA20019
                                      .copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.txtRoundedBorder5,
                                  ),
                                  child: Text(
                                    "lbl_used".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle
                                        .txtPoppinsBold12LightblueA200
                                        .copyWith(
                                      letterSpacing: 0.50,
                                      height: 1.00,
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: getMargin(
                                    left: 8,
                                  ),
                                  padding: getPadding(
                                    left: 16,
                                    top: 19,
                                    right: 16,
                                    bottom: 16,
                                  ),
                                  decoration: AppDecoration
                                      .txtFillLightblueA20019
                                      .copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.txtRoundedBorder5,
                                  ),
                                  child: Text(
                                    "lbl_not_specified".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle
                                        .txtPoppinsBold12LightblueA200
                                        .copyWith(
                                      letterSpacing: 0.50,
                                      height: 1.00,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              top: 27,
                              right: 10,
                            ),
                            child: Text(
                              "lbl_buying_format".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsBold14.copyWith(
                                letterSpacing: 0.50,
                                height: 1.00,
                              ),
                            ),
                          ),
                          Wrap(
                            children: List<Widget>.generate(
                                controller.filterModelObj.value
                                    .buyingformateItemList.length, (index) {
                              BuyingformateItemModel model = controller
                                  .filterModelObj
                                  .value
                                  .buyingformateItemList[index];
                              return BuyingformateItemWidget(model);
                            }),
                          ),
                          Padding(
                            padding: getPadding(
                              top: 26,
                              right: 10,
                            ),
                            child: Text(
                              "lbl_item_location".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsBold14.copyWith(
                                letterSpacing: 0.50,
                                height: 1.00,
                              ),
                            ),
                          ),
                          Wrap(
                            children: List<Widget>.generate(
                                controller.filterModelObj.value
                                    .itemlocationItemList.length, (index) {
                              ItemlocationItemModel model = controller
                                  .filterModelObj
                                  .value
                                  .itemlocationItemList[index];
                              return ItemlocationItemWidget(model);
                            }),
                          ),
                          Padding(
                            padding: getPadding(
                              top: 28,
                              right: 10,
                            ),
                            child: Text(
                              "lbl_show_only".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsBold14.copyWith(
                                letterSpacing: 0.50,
                                height: 1.00,
                              ),
                            ),
                          ),
                          Wrap(
                            children: List<Widget>.generate(
                                controller.filterModelObj.value.showonlyItemList
                                    .length, (index) {
                              ShowonlyItemModel model = controller
                                  .filterModelObj.value.showonlyItemList[index];
                              return ShowonlyItemWidget(model);
                            }),
                          ),
                          CustomButton(
                            width: 343,
                            text: "lbl_apply".tr,
                            margin: getMargin(
                              top: 28,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
