
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme{
// constante de color primario 
static const primaryColor = Color.fromARGB(225, 1, 1, 1);
//constate del color de fondo
static const backColor = Color.fromARGB(255, 234, 255, 225);
// constante  del color secundario 
static const secundaryColor = Color.fromARGB(255, 108, 41, 57);
//definicino del tema de color y estilo de la app
  static final ThemeData lightTheme= ThemeData.light().copyWith(
      scaffoldBackgroundColor: backColor,
        appBarTheme:const AppBarTheme(color: backColor),
        textTheme: TextTheme(
         headlineLarge: GoogleFonts.rokkitt(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                        color:primaryColor),

         bodySmall: GoogleFonts.aBeeZee(
                        fontSize: 14,
                        fontWeight:FontWeight.w500,
                        color:secundaryColor,
                        )
        )
  );







}