import '../models/itemlocation_item_model.dart';
import 'package:application/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ItemlocationItemWidget extends StatelessWidget {
  ItemlocationItemWidget(this.itemlocationItemModelObj);

  ItemlocationItemModel itemlocationItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Padding(
        padding: getPadding(
          right: 5,
          bottom: 5,
        ),
        child: ChoiceChip(
          label: Text(
            itemlocationItemModelObj.northAmericaSTxt.value,
            textAlign: TextAlign.left,
            style: TextStyle(
              color: itemlocationItemModelObj.isSelected.value
                  ? ColorConstant.lightBlueA200
                  : ColorConstant.bluegray300,
              fontSize: getFontSize(
                12,
              ),
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w700,
            ),
          ),
          selected: itemlocationItemModelObj.isSelected.value,
          backgroundColor: Colors.transparent,
          selectedColor: ColorConstant.fromHex("#1940bfff"),
          shape: itemlocationItemModelObj.isSelected.value
              ? RoundedRectangleBorder(
                  side: BorderSide.none,
                  borderRadius: BorderRadius.circular(
                    getHorizontalSize(
                      5.00,
                    ),
                  ),
                )
              : RoundedRectangleBorder(
                  side: BorderSide(
                    color: ColorConstant.fromHex("#ffeaefff"),
                    width: getHorizontalSize(
                      1.00,
                    ),
                  ),
                  borderRadius: BorderRadius.circular(
                    getHorizontalSize(
                      5.00,
                    ),
                  ),
                ),
          onSelected: (value) {
            itemlocationItemModelObj.isSelected.value = value;
          },
        ),
      ),
    );
  }
}
