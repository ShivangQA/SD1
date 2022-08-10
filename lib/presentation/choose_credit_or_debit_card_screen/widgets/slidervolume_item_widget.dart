import '../controller/choose_credit_or_debit_card_controller.dart';
import '../models/slidervolume_item_model.dart';
import 'package:application/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SlidervolumeItemWidget extends StatelessWidget {
  SlidervolumeItemWidget(this.slidervolumeItemModelObj);

  SlidervolumeItemModel slidervolumeItemModelObj;

  var controller = Get.find<ChooseCreditOrDebitCardController>();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
        decoration: AppDecoration.fillLightblueA200.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder5,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: getPadding(
                left: 24,
                top: 24,
                right: 24,
              ),
              child: CommonImageView(
                svgPath: ImageConstant.imgVolume22X36,
                height: getVerticalSize(
                  22.00,
                ),
                width: getHorizontalSize(
                  36.00,
                ),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Container(
                margin: getMargin(
                  left: 21,
                  top: 36,
                  right: 21,
                  bottom: 16,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "msg_6326_9124".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtPoppinsBold24.copyWith(
                        letterSpacing: 0.50,
                        height: 1.00,
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        top: 26,
                        right: 10,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: getPadding(
                              top: 2,
                            ),
                            child: Text(
                              "lbl_card_holder2".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsRegular10WhiteA70087
                                  .copyWith(
                                letterSpacing: 0.50,
                                height: 1.00,
                              ),
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              left: 37,
                              bottom: 2,
                            ),
                            child: Text(
                              "lbl_card_save".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsRegular10WhiteA70087
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
                        top: 12,
                        right: 10,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Padding(
                            padding: getPadding(
                              bottom: 5,
                            ),
                            child: Text(
                              "lbl_dominic_ovo".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style:
                                  AppStyle.txtPoppinsBold10WhiteA700.copyWith(
                                letterSpacing: 0.50,
                                height: 1.00,
                              ),
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              left: 44,
                              top: 2,
                            ),
                            child: Text(
                              "lbl_06_24".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style:
                                  AppStyle.txtPoppinsBold10WhiteA700.copyWith(
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
            ),
          ],
        ),
      ),
    );
  }
}
