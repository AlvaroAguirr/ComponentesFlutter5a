
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

static const bottomColor = Color.fromARGB(255,100,200,150);
//contraste de botones en fondos negros 


static const widgetColor= Color.fromARGB(255, 255, 145, 145);
// color de botones cuando estan disabilitados

static const disabledWidgetColor= Color.fromARGB(255, 237, 246, 112);
// color de botones cuando estan disabilitados
  static final ThemeData lightTheme= ThemeData.light().copyWith(
      scaffoldBackgroundColor: backColor,

        appBarTheme: AppBarTheme(
          color: primaryColor,
          titleTextStyle:  GoogleFonts.lato(color: backColor,
          fontSize: 20.6,
          fontWeight: FontWeight.bold
          )
      ),
        iconTheme: const IconThemeData(
          color: primaryColor,
          size: 42,
        ),

        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(widgetColor),
            foregroundColor: MaterialStateProperty.all(primaryColor),
            textStyle:  MaterialStateProperty.all(
              GoogleFonts.pacifico(color:backColor,fontSize: 20 )
            )
          )
        ),

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
          headlineMedium:GoogleFonts.abel(
                        fontSize:25,
                        fontWeight:FontWeight.w700,
                        color:secundaryColor,

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