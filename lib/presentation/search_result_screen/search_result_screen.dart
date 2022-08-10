import '../search_result_screen/widgets/search_result_item_widget.dart';
import 'controller/search_result_controller.dart';
import 'models/search_result_item_model.dart';
import 'package:application/core/app_export.dart';
import 'package:application/widgets/custom_drop_down.dart';
import 'package:application/widgets/custom_search_view.dart';
import 'package:flutter/material.dart';

class SearchResultScreen extends GetWidget<SearchResultController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        body: Container(
          margin: getMargin(
            top: 18,
            bottom: 15,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: size.width,
                margin: getMargin(
                  left: 16,
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
                      controller: controller.searchController,
                      hintText: "lbl_nike_air_max".tr,
                      fontStyle: SearchViewFontStyle.PoppinsBold12,
                      prefix: Container(
                        margin: getMargin(
                          left: 17,
                          top: 13,
                          right: 9,
                          bottom: 15,
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
                        top: 12,
                        bottom: 12,
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
                        top: 12,
                        bottom: 10,
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
              Expanded(
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: SingleChildScrollView(
                    padding: getPadding(
                      top: 18,
                    ),
                    child: Container(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.center,
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
                          Container(
                            margin: getMargin(
                              left: 16,
                              top: 19,
                              right: 16,
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
                                      right: 6,
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Padding(
                                          padding: getPadding(
                                            bottom: 1,
                                          ),
                                          child: Text(
                                            "lbl_145_result".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtPoppinsBold12Indigo90087
                                                .copyWith(
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
                                              svgPath: ImageConstant
                                                  .imgArrowdownBluegray300,
                                            ),
                                          ),
                                          hintText: "lbl_man_shoes".tr,
                                          margin: getMargin(
                                            top: 1,
                                          ),
                                          items: controller.searchResultModelObj
                                              .value.dropdownItemList,
                                          onChanged: (value) {
                                            controller.onSelected(value);
                                          },
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(
                                    top: 22,
                                  ),
                                  child: Obx(
                                    () => GridView.builder(
                                      shrinkWrap: true,
                                      gridDelegate:
                                          SliverGridDelegateWithFixedCrossAxisCount(
                                        mainAxisExtent: getVerticalSize(
                                          283.00,
                                        ),
                                        crossAxisCount: 2,
                                        mainAxisSpacing: getHorizontalSize(
                                          13.00,
                                        ),
                                        crossAxisSpacing: getHorizontalSize(
                                          13.00,
                                        ),
                                      ),
                                      physics: NeverScrollableScrollPhysics(),
                                      itemCount: controller.searchResultModelObj
                                          .value.searchResultItemList.length,
                                      itemBuilder: (context, index) {
                                        SearchResultItemModel model = controller
                                            .searchResultModelObj
                                            .value
                                            .searchResultItemList[index];
                                        return SearchResultItemWidget(
                                          model,
                                        );
                                      },
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
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
