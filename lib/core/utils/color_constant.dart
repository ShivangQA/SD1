import 'dart:ui';
import 'package:flutter/material.dart';

class ColorConstant {
  static Color black9007a = fromHex('#7a000910');

  static Color blueA700 = fromHex('#0061ff');

  static Color lightBlueA200 = fromHex('#40bfff');

  static Color indigoA200 = fromHex('#5b61f4');

  static Color lightBlueA2003d = fromHex('#3d40bfff');

  static Color blue50 = fromHex('#eaefff');

  static Color gray50 = fromHex('#f9fbff');

  static Color indigo90087 = fromHex('#87223263');

  static Color bluegray900 = fromHex('#262b35');

  static Color whiteA70087 = fromHex('#87ffffff');

  static Color lightBlueA20019 = fromHex('#1940bfff');

  static Color black900 = fromHex('#000000');

  static Color yellow700 = fromHex('#ffc732');

  static Color bluegray400 = fromHex('#888888');

  static Color bluegray301 = fromHex('#9ea8ba');

  static Color bluegray300 = fromHex('#9098b1');

  static Color black902 = fromHex('#000910');

  static Color indigo900 = fromHex('#223263');

  static Color pink300 = fromHex('#fb7181');

  static Color whiteA700 = fromHex('#ffffff');

  static Color bluegray9007a = fromHex('#7a262b35');

  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}
