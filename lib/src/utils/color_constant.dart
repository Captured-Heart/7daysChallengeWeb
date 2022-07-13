import 'dart:ui';

class ColorConstant {
  static Color lightTeal = fromHex('#5CD3D0');
  static Color darkBgColor = fromHex('#052728');
  static Color lightBgColor = fromHex('#B2C8C8');
  static Color textWhiteColor = fromHex('#ffffff'); 
  static Color textBlackColor = fromHex('#000000'); 

  static Color shapeColorDarkBg = fromHex('#014143');
  static Color shapeColorLightBg = fromHex('#266F72');

  // #004749CC



  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}
