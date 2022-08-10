import '../controller/notification_feed_controller.dart';
import '../models/listnewproduct_item_model.dart';
import 'package:application/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ListnewproductItemWidget extends StatelessWidget {
  ListnewproductItemWidget(this.listnewproductItemModelObj);

  ListnewproductItemModel listnewproductItemModelObj;

  var controller = Get.find<NotificationFeedController>();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
        decoration: AppDecoration.fillWhiteA700,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: getPadding(
                left: 16,
                top: 16,
                bottom: 56,
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(
                  getHorizontalSize(
                    5.00,
                  ),
                ),
                child: CommonImageView(
                  imagePath: ImageConstant.imgProductimage48X48,
                  height: getSize(
                    48.00,
                  ),
                  width: getSize(
                    48.00,
                  ),
                ),
              ),
            ),
            Container(
              margin: getMargin(
                left: 12,
                top: 18,
                right: 30,
                bottom: 16,
              ),
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
                      "lbl_new_product".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtPoppinsBold14.copyWith(
                        letterSpacing: 0.50,
                        height: 1.00,
                      ),
                    ),
                  ),
                  Container(
                    width: getHorizontalSize(
                      268.00,
                    ),
                    margin: getMargin(
                      top: 13,
                    ),
                    child: Text(
                      "msg_nike_air_zoom_p2".tr,
                      maxLines: null,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtPoppinsRegular12.copyWith(
                        letterSpacing: 0.50,
                        height: 1.80,
                      ),
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 11,
                      right: 10,
                    ),
                    child: Text(
                      "msg_june_3_2015_5".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtPoppinsRegular10Indigo900.copyWith(
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
    );
  }
}
