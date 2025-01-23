import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheame {
  static ThemeData darkTheme = ThemeData(
    scaffoldBackgroundColor: Color(0xff070F2B),
    fontFamily: GoogleFonts.poppins().fontFamily,
    appBarTheme: AppBarTheme(
      elevation: 1,
      backgroundColor: Color(0xff1B1A55),
      titleTextStyle: TextStyle(
        color: Colors.white,
      ),
    ),
  );
}
