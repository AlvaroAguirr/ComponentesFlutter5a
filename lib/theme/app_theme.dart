
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme{
// constante de color primario 
static const primaryColor = Color.fromARGB(224, 95, 95, 95);
//constate del color de fondo
static const backColor = Color.fromARGB(255, 218, 255, 203);
// constante  del color secundario 
static const secundaryColor = Color.fromARGB(255, 108, 41, 57);
//definicino del tema de color y estilo de la app
  static final ThemeData lightTheme= ThemeData.light().copyWith(
      scaffoldBackgroundColor: backColor,
        appBarTheme:const AppBarTheme(color: Color.fromARGB(255, 182, 212, 171)),
        textTheme: TextTheme(
         headlineLarge: GoogleFonts.prompt(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color:primaryColor,
                        decoration: TextDecoration.overline,
                        decorationColor: primaryColor,
                        decorationStyle: TextDecorationStyle.dashed,
                        decorationThickness: 5,
                        ),

         bodySmall: GoogleFonts.abel(
                        fontSize: 14,
                        fontWeight:FontWeight.w500,
                        color:secundaryColor,
                        fontStyle: FontStyle.italic
                        )
        )
  );







}