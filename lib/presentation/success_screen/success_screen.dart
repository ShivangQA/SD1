import 'controller/success_controller.dart';
import 'package:application/core/app_export.dart';
import 'package:application/widgets/custom_button.dart';
import 'package:application/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

class SuccessScreen extends GetWidget<SuccessController> {
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
                  CustomIconButton(
                    height: 72,
                    width: 72,
                    margin: getMargin(
                      left: 16,
                      top: 248,
                      right: 16,
                    ),
                    variant: IconButtonVariant.OutlineLightblueA2003d,
                    padding: IconButtonPadding.PaddingAll18,
                    child: CommonImageView(
                      svgPath: ImageConstant.imgVector41WhiteA700,
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      left: 16,
                      top: 21,
                      right: 16,
                    ),
                    child: Text(
                      "lbl_success".tr,
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
                      style: AppStyle.txtPoppinsRegular12Indigo90087.copyWith(
                        letterSpacing: 0.50,
                        height: 1.00,
                      ),
                    ),
                  ),
                  CustomButton(
                    width: 343,
                    text: "lbl_back_to_order".tr,
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
