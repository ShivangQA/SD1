import '../controller/explore_controller.dart';
import '../models/listairplane_item_model.dart';
import 'package:application/core/app_export.dart';
import 'package:application/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ListairplaneItemWidget extends StatelessWidget {
  ListairplaneItemWidget(this.listairplaneItemModelObj);

  ListairplaneItemModel listairplaneItemModelObj;

  var controller = Get.find<ExploreController>();

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Container(
        margin: getMargin(
          right: 21,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            CustomIconButton(
              height: 70,
              width: 70,
              child: CommonImageView(
                svgPath: ImageConstant.imgAirplane,
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Padding(
                padding: getPadding(
                  left: 21,
                  top: 10,
                  right: 20,
                ),
                child: Text(
                  "lbl_dress".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtPoppinsRegular10.copyWith(
                    letterSpacing: 0.50,
                    height: 1.00,
                  ),
                ),
              ),
            ),
            CustomIconButton(
              height: 70,
              width: 70,
              margin: getMargin(
                top: 1,
              ),
              child: CommonImageView(
                svgPath: ImageConstant.imgTrash,
              ),
            ),
            Padding(
              padding: getPadding(
                top: 11,
              ),
              child: Text(
                "lbl_woman_bag".tr,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtPoppinsRegular10.copyWith(
                  letterSpacing: 0.50,
                  height: 1.00,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
