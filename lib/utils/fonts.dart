import 'package:google_fonts/google_fonts.dart';
import "package:flutter/material.dart";

class Fonts {
  static final TextStyle _largeHeading = GoogleFonts.inter(
    fontSize: 24,
    fontWeight: FontWeight.w600,
    color: Colors.white,
  );

  static final TextStyle _smallHeading = GoogleFonts.inter(
    fontSize: 10,
    fontWeight: FontWeight.w500,
    color: Colors.white,
  );

  static final TextStyle _heading = GoogleFonts.inter(
    fontSize: 14,
    fontWeight: FontWeight.w500,
    color: Colors.white,
  );

  static final TextStyle _body = GoogleFonts.inter(
    fontSize: 12,
    fontWeight: FontWeight.w400,
    color: Colors.white,
  );

  TextStyle get heading => _heading;
  TextStyle get body => _body;
  TextStyle get largeHeading => _largeHeading;
  TextStyle get smallHeading => _smallHeading;
}
