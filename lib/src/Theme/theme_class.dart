import 'package:flutter/material.dart';

TextTheme darkTextTheme(TextTheme base) {
  return base.copyWith(
    headline1: base.headline1!.copyWith(
      fontSize: 22.0,
      color: const Color(0xffffffff),
    ),
    headline2: base.headline2!.copyWith(
      fontWeight: FontWeight.w500,
      fontSize: 9.0,
      color: const Color(0xffffffff),
    ),
    headline3: base.headline3!.copyWith(
      fontWeight: FontWeight.w500,
      fontSize: 9.0,
      color: const Color(0xff272c3a),
    ),
  );
}

class MyTheme {
  
    //! DARK THEME
  static final darkTheme = ThemeData(
    scaffoldBackgroundColor: const Color(0xff1c1f2a),
    primaryColor: const Color(0xff272c3a),
    iconTheme: const IconThemeData(color: Color(0xff58A4EB), opacity: 0.8),
    highlightColor: const Color(0xffffffff),
    canvasColor: const Color(0xff858585),
    textTheme: darkTextTheme(ThemeData.dark().textTheme),
    textSelectionTheme: const TextSelectionThemeData(
      selectionColor: Color(0xff58A4EB),
      selectionHandleColor: Color(0xff58A4EB),
      cursorColor: Color(0xff58A4EB),
    ),
    colorScheme:
        const ColorScheme.dark().copyWith(secondary: const Color(0xffffffff)),
  );


//! LIGHT THEME
  static final lightTheme = ThemeData(
    scaffoldBackgroundColor: const Color(0xfff3f3f3),
    highlightColor: const Color(0xff3D3D3D),
    primaryColor: Colors.white,
    iconTheme: const IconThemeData(color: Color(0xff58A4EB), opacity: 0.8),
    canvasColor: const Color(0xff858585),
    textTheme: _lightTextTheme(ThemeData.light().textTheme),
    textSelectionTheme: const TextSelectionThemeData(
      selectionColor: Color(0xff58A4EB),
      selectionHandleColor: Color(0xff58A4EB),
      cursorColor: Color(0xff58A4EB),
    ),
    colorScheme:
        const ColorScheme.light().copyWith(secondary: const Color(0xff858585)),
  );
}

//LIGHT MODE
TextTheme _lightTextTheme(TextTheme base) {
  return base.copyWith(
    headline1: base.headline1!.copyWith(
      fontSize: 22.0,
      color: Colors.black,
    ),
    headline2: base.headline2!.copyWith(
      fontWeight: FontWeight.w500,
      fontSize: 9.0,
      color: const Color(0xff3d3d3d),
    ),
    headline3: base.headline3!.copyWith(
      fontWeight: FontWeight.w500,
      fontSize: 9.0,
      color: const Color(0xffffffff),
    ),
  );
}
