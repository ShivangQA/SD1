import '../controller/explore_controller.dart';
import '../models/listarrowdown_item_model.dart';
import 'package:application/core/app_export.dart';
import 'package:application/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ListarrowdownItemWidget extends StatelessWidget {
  ListarrowdownItemWidget(this.listarrowdownItemModelObj);

  ListarrowdownItemModel listarrowdownItemModelObj;

  var controller = Get.find<ExploreController>();

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Container(
        margin: getMargin(
          right: 21,
          bottom: 13,
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
                svgPath: ImageConstant.imgArrowdown,
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Padding(
                padding: getPadding(
                  left: 10,
                  top: 10,
                  right: 10,
                ),
                child: Text(
                  "lbl_man_shirt".tr,
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
                svgPath: ImageConstant.imgTrash20X15,
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Padding(
                padding: getPadding(
                  left: 7,
                  top: 10,
                  right: 7,
                ),
                child: Text(
                  "lbl_man_pants".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtPoppinsRegular10.copyWith(
                    letterSpacing: 0.50,
                    height: 1.00,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
