import "package:flutter/material.dart";

class Colors {
  static const Color _primarycolor = Color(0xFF3069e4);
  static const Color _secondarycolor = Color(0xFFea6a2d);
  static const Color _darkColor = Color(0xFF000000);
  static const Color _grayColor = Color(0xFF353535);
  static const Color _transparent = Color(0x00000000);
  static const Color _white = Color(0xFFFFFFFF);

  static const Color _redColor = Color(0xFFd72f2c);
  static const Color _yellowColor = Color(0xFFe9a240);

  static final Gradient _glassGradient = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [
      _grayColor,
      _grayColor.withOpacity(.25),
    ],
  );

  Color get primarycolor => _primarycolor;
  Color get secondarycolor => _secondarycolor;
  Color get darkColor => _darkColor;
  Color get transparent => _transparent;
  Color get white => _white;
  Color get grayColor => _grayColor;
  Color get redColor => _redColor;
  Color get yellowColor => _yellowColor;
  Gradient get glassGradient => _glassGradient;
}
