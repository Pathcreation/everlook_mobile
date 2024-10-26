import 'package:flutter/material.dart';

/// ColorScheme
class AppColors {
  static const shadow = Color(0xFF1C1C1F);
  static const background = Color(0xFF2c2c2c);
  static const shadow2 = Color(0xFF2C2C2F);
  static const post = Color(0xFF2D2D31);
  static const primary = Color(0xFF38393E);
  static const additional1 = Color(0xFF505052);
  static const additional2 = Color(0xFF828282);
  static const additional3 = Color(0xFFA8A8A9);
  static const additional4 = Color(0xFFC0C0C0);
  static const additional5 = Color(0xFFD9D9DB);
  static const white = Color(0xFFF2F2F2);
  static const green = Color(0xFF6AD659);
  static const error = Color(0xFFFF747C);
  static const secondary = Color(0xFF863AF6);
  static const userColor1 = Color(0xFF79b3fd);
  static const userColor2 = Color(0xFFffa6d8);
  static const userColor3 = Color(0xFFacffcc);
  static const userColor4 = Color(0xFFf8c1a4);
  static const userColor5 = Color(0xFFf8eb98);
}

LinearGradient gradient = const LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment(0.25, 1),
  colors: <Color>[
    Color(0xff9a00ff),
    Color(0xffff0000),
    Color(0xfffdbd18),
    Color(0xffe8ff00),
  ],
  tileMode: TileMode.mirror,
);

LinearGradient gradientButton = const LinearGradient(
  begin: Alignment.bottomLeft,
  end: Alignment.topRight,
  colors: <Color>[
    Color(0xff7e00d0),
    Color(0xffda0000),
    Color(0xffe9a800),

    // Color(0xffEF615C),
  ],
  tileMode: TileMode.clamp,
);
