import '../dashboard_screen/widgets/dashboard_item_widget.dart';
import '../dashboard_screen/widgets/flashsale_item_widget.dart';
import '../dashboard_screen/widgets/megasale_item_widget.dart';
import '../dashboard_screen/widgets/sliderofferbannerti_item_widget.dart';
import 'controller/dashboard_controller.dart';
import 'models/dashboard_item_model.dart';
import 'models/flashsale_item_model.dart';
import 'models/megasale_item_model.dart';
import 'models/sliderofferbannerti_item_model.dart';
import 'package:application/core/app_export.dart';
import 'package:application/widgets/custom_icon_button.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class DashboardScreen extends GetWidget<DashboardController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        body: Column(
          children: [
            Expanded(
              child: Container(
                margin: getMargin(
                  top: 27,
                  bottom: 7,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.end,
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
                          Padding(
                            padding: getPadding(
                              top: 4,
                              bottom: 4,
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Padding(
                                  padding: getPadding(
                                    bottom: 1,
                                  ),
                                  child: CommonImageView(
                                    svgPath: ImageConstant.imgSearch,
                                    height: getVerticalSize(
                                      11.00,
                                    ),
                                    width: getHorizontalSize(
                                      14.00,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(
                                    left: 9,
                                    top: 1,
                                  ),
                                  child: Text(
                                    "lbl_search_product".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style:
                                        AppStyle.txtPoppinsRegular12.copyWith(
                                      letterSpacing: 0.50,
                                      height: 1.00,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Padding(
                                padding: getPadding(
                                  top: 3,
                                ),
                                child: CommonImageView(
                                  svgPath: ImageConstant.imgVectorBluegray300,
                                  height: getVerticalSize(
                                    18.00,
                                  ),
                                  width: getHorizontalSize(
                                    20.00,
                                  ),
                                ),
                              ),
                              Container(
                                height: getVerticalSize(
                                  22.00,
                                ),
                                width: getHorizontalSize(
                                  18.00,
                                ),
                                margin: getMargin(
                                  left: 20,
                                  bottom: 1,
                                ),
                                child: Stack(
                                  alignment: Alignment.topRight,
                                  children: [
                                    Align(
                                      alignment: Alignment.bottomLeft,
                                      child: Padding(
                                        padding: getPadding(
                                          top: 10,
                                          right: 10,
                                        ),
                                        child: CommonImageView(
                                          svgPath:
                                              ImageConstant.imgNotification,
                                          height: getVerticalSize(
                                            20.00,
                                          ),
                                          width: getHorizontalSize(
                                            17.00,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.topRight,
                                      child: Container(
                                        height: getSize(
                                          8.00,
                                        ),
                                        width: getSize(
                                          8.00,
                                        ),
                                        margin: getMargin(
                                          left: 10,
                                          bottom: 10,
                                        ),
                                        decoration: BoxDecoration(
                                          color: ColorConstant.pink300,
                                          borderRadius: BorderRadius.circular(
                                            getHorizontalSize(
                                              4.00,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: SingleChildScrollView(
                          padding: getPadding(
                            left: 10,
                            top: 44,
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
                                  child: Obx(
                                    () => CarouselSlider.builder(
                                      options: CarouselOptions(
                                        height: getVerticalSize(
                                          206.00,
                                        ),
                                        initialPage: 0,
                                        autoPlay: true,
                                        viewportFraction: 1.0,
                                        enableInfiniteScroll: false,
                                        scrollDirection: Axis.horizontal,
                                        onPageChanged: (index, reason) {
                                          controller.silderIndex.value = index;
                                        },
                                      ),
                                      itemCount: controller
                                          .dashboardModelObj
                                          .value
                                          .sliderofferbannertiItemList
                                          .length,
                                      itemBuilder: (context, index, realIndex) {
                                        SliderofferbannertiItemModel model =
                                            controller.dashboardModelObj.value
                                                    .sliderofferbannertiItemList[
                                                index];
                                        return SliderofferbannertiItemWidget(
                                          model,
                                        );
                                      },
                                    ),
                                  ),
                                ),
                                Obx(
                                  () => Container(
                                    height: getVerticalSize(
                                      8.00,
                                    ),
                                    margin: getMargin(
                                      left: 135,
                                      top: 16,
                                      right: 135,
                                    ),
                                    child: AnimatedSmoothIndicator(
                                      activeIndex: controller.silderIndex.value,
                                      count: controller.dashboardModelObj.value
                                          .sliderofferbannertiItemList.length,
                                      axisDirection: Axis.horizontal,
                                      effect: ScrollingDotsEffect(
                                        spacing: 8,
                                        activeDotColor:
                                            ColorConstant.lightBlueA200,
                                        dotColor: ColorConstant.blue50,
                                        dotHeight: getVerticalSize(
                                          8.00,
                                        ),
                                        dotWidth: getHorizontalSize(
                                          8.00,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(
                                    top: 29,
                                    right: 10,
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Text(
                                        "lbl_category".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style:
                                            AppStyle.txtPoppinsBold14.copyWith(
                                          letterSpacing: 0.50,
                                          height: 1.00,
                                        ),
                                      ),
                                      Padding(
                                        padding: getPadding(
                                          left: 157,
                                        ),
                                        child: Text(
                                          "lbl_more_category".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle
                                              .txtPoppinsBold14LightblueA200
                                              .copyWith(
                                            letterSpacing: 0.50,
                                            height: 1.00,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SingleChildScrollView(
                                  scrollDirection: Axis.horizontal,
                                  padding: getPadding(
                                    top: 12,
                                  ),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Container(
                                        margin: getMargin(
                                          bottom: 23,
                                        ),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            CustomIconButton(
                                              height: 70,
                                              width: 70,
                                              alignment: Alignment.centerLeft,
                                              child: CommonImageView(
                                                svgPath:
                                                    ImageConstant.imgArrowdown,
                                              ),
                                            ),
                                            Padding(
                                              padding: getPadding(
                                                left: 10,
                                                top: 10,
                                                right: 10,
                                              ),
                                              child: Text(
                                                "lbl_man_shirt".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtPoppinsRegular10
                                                    .copyWith(
                                                  letterSpacing: 0.50,
                                                  height: 1.00,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        margin: getMargin(
                                          left: 12,
                                          bottom: 23,
                                        ),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            CustomIconButton(
                                              height: 70,
                                              width: 70,
                                              alignment: Alignment.centerLeft,
                                              child: CommonImageView(
                                                svgPath:
                                                    ImageConstant.imgAirplane,
                                              ),
                                            ),
                                            Padding(
                                              padding: getPadding(
                                                left: 21,
                                                top: 10,
                                                right: 20,
                                              ),
                                              child: Text(
                                                "lbl_dress".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtPoppinsRegular10
                                                    .copyWith(
                                                  letterSpacing: 0.50,
                                                  height: 1.00,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        margin: getMargin(
                                          left: 12,
                                          bottom: 6,
                                        ),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            CustomIconButton(
                                              height: 70,
                                              width: 70,
                                              alignment: Alignment.centerLeft,
                                              child: CommonImageView(
                                                svgPath: ImageConstant
                                                    .imgManworkequipm,
                                              ),
                                            ),
                                            Container(
                                              width: getHorizontalSize(
                                                56.00,
                                              ),
                                              margin: getMargin(
                                                left: 6,
                                                top: 11,
                                                right: 6,
                                              ),
                                              child: Text(
                                                "msg_man_work_equipm".tr,
                                                maxLines: null,
                                                textAlign: TextAlign.center,
                                                style: AppStyle
                                                    .txtPoppinsRegular10
                                                    .copyWith(
                                                  letterSpacing: 0.50,
                                                  height: 1.50,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        margin: getMargin(
                                          left: 12,
                                          bottom: 22,
                                        ),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            CustomIconButton(
                                              height: 70,
                                              width: 70,
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
                                                style: AppStyle
                                                    .txtPoppinsRegular10
                                                    .copyWith(
                                                  letterSpacing: 0.50,
                                                  height: 1.00,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        margin: getMargin(
                                          left: 12,
                                          bottom: 23,
                                        ),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            CustomIconButton(
                                              height: 70,
                                              width: 70,
                                              child: CommonImageView(
                                                svgPath:
                                                    ImageConstant.imgTicket,
                                              ),
                                            ),
                                            Align(
                                              alignment: Alignment.center,
                                              child: Padding(
                                                padding: getPadding(
                                                  left: 3,
                                                  top: 10,
                                                  right: 3,
                                                ),
                                                child: Text(
                                                  "lbl_man_shoes".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.center,
                                                  style: AppStyle
                                                      .txtPoppinsRegular10
                                                      .copyWith(
                                                    letterSpacing: 0.50,
                                                    height: 1.00,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        margin: getMargin(
                                          left: 12,
                                        ),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            CustomIconButton(
                                              height: 70,
                                              width: 70,
                                              padding: IconButtonPadding
                                                  .PaddingAll22,
                                              child: CommonImageView(
                                                svgPath: ImageConstant
                                                    .imgVectorLightBlueA200,
                                              ),
                                            ),
                                            Container(
                                              width: getHorizontalSize(
                                                70.00,
                                              ),
                                              margin: getMargin(
                                                top: 8,
                                              ),
                                              child: Text(
                                                "lbl_high_heels".tr,
                                                maxLines: null,
                                                textAlign: TextAlign.center,
                                                style: AppStyle
                                                    .txtPoppinsRegular10
                                                    .copyWith(
                                                  letterSpacing: 0.50,
                                                  height: 1.50,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(
                                    top: 20,
                                    right: 10,
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Padding(
                                        padding: getPadding(
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          "lbl_flash_sale".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle.txtPoppinsBold14
                                              .copyWith(
                                            letterSpacing: 0.50,
                                            height: 1.00,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: getPadding(
                                          left: 197,
                                          top: 1,
                                        ),
                                        child: Text(
                                          "lbl_see_more".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle
                                              .txtPoppinsBold14LightblueA200
                                              .copyWith(
                                            letterSpacing: 0.50,
                                            height: 1.00,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.centerRight,
                                  child: Container(
                                    height: getVerticalSize(
                                      253.00,
                                    ),
                                    width: getHorizontalSize(
                                      455.00,
                                    ),
                                    child: Obx(
                                      () => ListView.builder(
                                        padding: getPadding(
                                          top: 15,
                                        ),
                                        scrollDirection: Axis.horizontal,
                                        physics: BouncingScrollPhysics(),
                                        itemCount: controller.dashboardModelObj
                                            .value.flashsaleItemList.length,
                                        itemBuilder: (context, index) {
                                          FlashsaleItemModel model = controller
                                              .dashboardModelObj
                                              .value
                                              .flashsaleItemList[index];
                                          return FlashsaleItemWidget(
                                            model,
                                          );
                                        },
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(
                                    top: 27,
                                    right: 10,
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Padding(
                                        padding: getPadding(
                                          top: 1,
                                        ),
                                        child: Text(
                                          "lbl_mega_sale".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle.txtPoppinsBold14
                                              .copyWith(
                                            letterSpacing: 0.50,
                                            height: 1.00,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: getPadding(
                                          left: 195,
                                          bottom: 3,
                                        ),
                                        child: Text(
                                          "lbl_see_more".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle
                                              .txtPoppinsBold14LightblueA200
                                              .copyWith(
                                            letterSpacing: 0.50,
                                            height: 1.00,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.centerRight,
                                  child: Container(
                                    height: getVerticalSize(
                                      250.00,
                                    ),
                                    width: getHorizontalSize(
                                      455.00,
                                    ),
                                    child: Obx(
                                      () => ListView.builder(
                                        padding: getPadding(
                                          top: 12,
                                        ),
                                        scrollDirection: Axis.horizontal,
                                        physics: BouncingScrollPhysics(),
                                        itemCount: controller.dashboardModelObj
                                            .value.megasaleItemList.length,
                                        itemBuilder: (context, index) {
                                          MegasaleItemModel model = controller
                                              .dashboardModelObj
                                              .value
                                              .megasaleItemList[index];
                                          return MegasaleItemWidget(
                                            model,
                                          );
                                        },
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(
                                    top: 29,
                                    right: 10,
                                  ),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(
                                      getHorizontalSize(
                                        5.00,
                                      ),
                                    ),
                                    child: CommonImageView(
                                      imagePath:
                                          ImageConstant.imgRecomendedprod,
                                      height: getVerticalSize(
                                        206.00,
                                      ),
                                      width: getHorizontalSize(
                                        343.00,
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(
                                    top: 16,
                                    right: 10,
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
                                      itemCount: controller.dashboardModelObj
                                          .value.dashboardItemList.length,
                                      itemBuilder: (context, index) {
                                        DashboardItemModel model = controller
                                            .dashboardModelObj
                                            .value
                                            .dashboardItemList[index];
                                        return DashboardItemWidget(
                                          model,
                                        );
                                      },
                                    ),
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
            Container(
              child: Container(
                height: getVerticalSize(
                  66.00,
                ),
                width: size.width,
                child: Stack(
                  alignment: Alignment.bottomLeft,
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                        margin: getMargin(
                          bottom: 1,
                        ),
                        decoration: AppDecoration.fillWhiteA700,
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
                              margin: getMargin(
                                top: 1,
                                bottom: 64,
                              ),
                              decoration: BoxDecoration(
                                color: ColorConstant.blue50,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Padding(
                        padding: getPadding(
                          top: 10,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Container(
                              margin: getMargin(
                                top: 2,
                                bottom: 4,
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: getPadding(
                                      left: 6,
                                      right: 6,
                                    ),
                                    child: CommonImageView(
                                      svgPath: ImageConstant.imgHomeicon,
                                      height: getVerticalSize(
                                        16.00,
                                      ),
                                      width: getHorizontalSize(
                                        18.00,
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: Padding(
                                      padding: getPadding(
                                        top: 9,
                                      ),
                                      child: Text(
                                        "lbl_home".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtPoppinsBold10LightblueA200
                                            .copyWith(
                                          letterSpacing: 0.50,
                                          height: 1.00,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              margin: getMargin(
                                top: 2,
                                bottom: 3,
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: getPadding(
                                      left: 9,
                                      right: 9,
                                    ),
                                    child: CommonImageView(
                                      svgPath:
                                          ImageConstant.imgSearchBluegray300,
                                      height: getVerticalSize(
                                        16.00,
                                      ),
                                      width: getHorizontalSize(
                                        18.00,
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: Padding(
                                      padding: getPadding(
                                        top: 10,
                                      ),
                                      child: Text(
                                        "lbl_explore".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtPoppinsRegular10
                                            .copyWith(
                                          letterSpacing: 0.50,
                                          height: 1.00,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              margin: getMargin(
                                top: 2,
                                bottom: 4,
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Align(
                                    alignment: Alignment.centerRight,
                                    child: Padding(
                                      padding: getPadding(
                                        left: 2,
                                        right: 1,
                                      ),
                                      child: CommonImageView(
                                        svgPath: ImageConstant.imgCart,
                                        height: getVerticalSize(
                                          16.00,
                                        ),
                                        width: getHorizontalSize(
                                          18.00,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      top: 8,
                                    ),
                                    child: Text(
                                      "lbl_cart".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style:
                                          AppStyle.txtPoppinsRegular10.copyWith(
                                        letterSpacing: 0.50,
                                        height: 1.00,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              margin: getMargin(
                                top: 2,
                                bottom: 4,
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
                                        left: 4,
                                        right: 3,
                                      ),
                                      child: CommonImageView(
                                        svgPath: ImageConstant.imgOffer,
                                        height: getVerticalSize(
                                          16.00,
                                        ),
                                        width: getHorizontalSize(
                                          18.00,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      top: 8,
                                    ),
                                    child: Text(
                                      "lbl_offer".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style:
                                          AppStyle.txtPoppinsRegular10.copyWith(
                                        letterSpacing: 0.50,
                                        height: 1.00,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              margin: getMargin(
                                top: 1,
                                bottom: 4,
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: getPadding(
                                      left: 12,
                                      right: 11,
                                    ),
                                    child: CommonImageView(
                                      svgPath: ImageConstant.imgUser,
                                      height: getVerticalSize(
                                        18.00,
                                      ),
                                      width: getHorizontalSize(
                                        20.00,
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: Padding(
                                      padding: getPadding(
                                        top: 8,
                                      ),
                                      child: Text(
                                        "lbl_account".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtPoppinsRegular10
                                            .copyWith(
                                          letterSpacing: 0.50,
                                          height: 1.00,
                                        ),
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
            ),
          ],
        ),
      ),
    );
  }
}
