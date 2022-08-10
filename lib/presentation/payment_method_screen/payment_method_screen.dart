import 'controller/payment_method_controller.dart';import 'package:application/core/app_export.dart';import 'package:flutter/material.dart';class PaymentMethodScreen extends GetWidget<PaymentMethodController> {@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(backgroundColor: ColorConstant.whiteA700, body: Container(width: size.width, child: SingleChildScrollView(child: Container(height: getVerticalSize(768.00), width: size.width, child: Stack(children: [Align(alignment: Alignment.topLeft, child: Container(margin: getMargin(top: 32, bottom: 32), child: Column(mainAxisSize: MainAxisSize.min, mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Container(width: size.width, margin: getMargin(left: 25, right: 25), child: Row(mainAxisAlignment: MainAxisAlignment.start, crossAxisAlignment: CrossAxisAlignment.center, mainAxisSize: MainAxisSize.max, children: [GestureDetector(onTap: () {onTapImgArrowleft();}, child: Padding(padding: getPadding(bottom: 4), child: CommonImageView(svgPath: ImageConstant.imgArrowleft, height: getVerticalSize(14.00), width: getHorizontalSize(8.00)))), Padding(padding: getPadding(left: 19, top: 1), child: Text("lbl_payment".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtPoppinsBold16.copyWith(letterSpacing: 0.50, height: 1.00)))]))), Align(alignment: Alignment.centerLeft, child: Container(margin: getMargin(top: 28), decoration: AppDecoration.fillBlue50, child: Row(mainAxisAlignment: MainAxisAlignment.start, crossAxisAlignment: CrossAxisAlignment.center, mainAxisSize: MainAxisSize.max, children: [Padding(padding: getPadding(left: 19, top: 21, bottom: 21), child: CommonImageView(svgPath: ImageConstant.imgMenu, height: getVerticalSize(13.00), width: getHorizontalSize(18.00))), Padding(padding: getPadding(left: 19, top: 21, bottom: 22), child: Text("msg_credit_card_or".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtPoppinsBold12.copyWith(letterSpacing: 0.50, height: 1.00)))]))), Align(alignment: Alignment.centerLeft, child: Container(decoration: AppDecoration.fillWhiteA700, child: Row(mainAxisAlignment: MainAxisAlignment.start, crossAxisAlignment: CrossAxisAlignment.center, mainAxisSize: MainAxisSize.max, children: [Padding(padding: getPadding(left: 18, top: 19, bottom: 19), child: CommonImageView(svgPath: ImageConstant.imgPaypalicon, height: getSize(18.00), width: getSize(18.00))), Padding(padding: getPadding(left: 19, top: 23, bottom: 19), child: Text("lbl_paypal".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtPoppinsBold12.copyWith(letterSpacing: 0.50, height: 1.00)))]))), Align(alignment: Alignment.centerLeft, child: Container(decoration: AppDecoration.fillWhiteA700, child: Row(mainAxisAlignment: MainAxisAlignment.start, crossAxisAlignment: CrossAxisAlignment.center, mainAxisSize: MainAxisSize.max, children: [Padding(padding: getPadding(left: 19, top: 19, bottom: 19), child: CommonImageView(svgPath: ImageConstant.imgBankicon, height: getSize(18.00), width: getSize(18.00))), Padding(padding: getPadding(left: 19, top: 21, bottom: 22), child: Text("lbl_bank_transfer".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtPoppinsBold12.copyWith(letterSpacing: 0.50, height: 1.00)))])))])))])))))); } 
onTapImgArrowleft() { Get.back(); } 
 }
