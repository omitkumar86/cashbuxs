import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';

myStyleInter(double fs, Color clr, [FontWeight ?fw]){
  return GoogleFonts.inter(fontSize: fs, color: clr, fontWeight: fw);
}

/// For Ruda Google Font
myStyleRuda(double fs, Color clr, [FontWeight ?fw]){
  return GoogleFonts.ruda(fontSize: fs, color: clr, fontWeight: fw);
}