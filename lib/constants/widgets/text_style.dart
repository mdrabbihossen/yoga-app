import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

TextStyle textStyle({ double? fontSize, FontWeight? fontWeight,Color? textColor}){
  return GoogleFonts.montserrat(
    fontSize: fontSize,
    fontWeight: fontWeight,
    color: textColor,
  );
}