import '../controller/cart_controller.dart';
import '../models/cart_item_model.dart';
import 'package:application/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CartItemWidget extends StatelessWidget {
  CartItemWidget(this.cartItemModelObj);

  CartItemModel cartItemModelObj;

  var controller = Get.find<CartController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: getMargin(
        right: 16,
      ),
      decoration: AppDecoration.outlineBlue50.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder5,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          Padding(
            padding: getPadding(
              left: 16,
              top: 16,
              bottom: 16,
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(
                getHorizontalSize(
                  5.00,
                ),
              ),
              child: CommonImageView(
                imagePath: ImageConstant.imgProductimage,
                height: getSize(
                  72.00,
                ),
                width: getSize(
                  72.00,
                ),
              ),
            ),
          ),
          Container(
            margin: getMargin(
              left: 12,
              top: 16,
              right: 16,
              bottom: 16,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    width: getHorizontalSize(
                      224.00,
                    ),
                    margin: getMargin(
                      top: 2,
                      right: 3,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Container(
                          width: getHorizontalSize(
                            149.00,
                          ),
                          margin: getMargin(
                            top: 1,
                          ),
                          child: Text(
                            "msg_nike_air_zoom_p".tr,
                            maxLines: null,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtPoppinsBold12.copyWith(
                              letterSpacing: 0.50,
                              height: 1.50,
                            ),
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            top: 1,
                            bottom: 14,
                          ),
                          child: CommonImageView(
                            svgPath: ImageConstant.imgVector,
                            height: getVerticalSize(
                              13.00,
                            ),
                            width: getHorizontalSize(
                              18.00,
                            ),
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            bottom: 13,
                          ),
                          child: CommonImageView(
                            svgPath: ImageConstant.imgCalendar,
                            height: getVerticalSize(
                              15.00,
                            ),
                            width: getHorizontalSize(
                              18.00,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  width: getHorizontalSize(
                    227.00,
                  ),
                  margin: getMargin(
                    top: 21,
                    bottom: 1,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: getPadding(
                          top: 3,
                          bottom: 1,
                        ),
                        child: Text(
                          "lbl_299_43".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style:
                              AppStyle.txtPoppinsBold12LightblueA200.copyWith(
                            letterSpacing: 0.50,
                            height: 1.00,
                          ),
                        ),
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          CommonImageView(
                            svgPath: ImageConstant.imgVideocamera,
                            height: getVerticalSize(
                              17.00,
                            ),
                            width: getHorizontalSize(
                              33.00,
                            ),
                          ),
                          Container(
                            decoration: AppDecoration.outlineBlue5012,
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Align(
                                  alignment: Alignment.centerRight,
                                  child: Padding(
                                    padding: getPadding(
                                      left: 18,
                                      top: 2,
                                      right: 18,
                                      bottom: 3,
                                    ),
                                    child: Text(
                                      "lbl_1".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle
                                          .txtPoppinsRegular12Indigo90087
                                          .copyWith(
                                        letterSpacing: 0.06,
                                        height: 1.00,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          CommonImageView(
                            svgPath: ImageConstant.imgComputer,
                            height: getVerticalSize(
                              17.00,
                            ),
                            width: getHorizontalSize(
                              33.00,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
