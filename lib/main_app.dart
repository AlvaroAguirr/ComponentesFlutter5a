import 'package:flutter/material.dart';
import 'package:practica3/home_screen.dart';


class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomeScreen(),
      theme: ThemeData(
        scaffoldBackgroundColor:Color.fromRGBO(255, 255, 255, 1),
        appBarTheme:const AppBarTheme(color: Color.fromARGB(255, 234, 255, 225)),
        textTheme: const  TextTheme(
         headlineLarge: TextStyle(
                        fontSize: 32,
                        fontFamily: 'sans-serif',
                        fontWeight: FontWeight.bold,
                        color:Color.fromARGB(255, 81, 41, 108)),
         bodySmall: TextStyle(
                        fontSize: 14,
                        fontFamily:'sans-serif',
                        fontWeight:FontWeight.w500,
                        color:Color.fromARGB(255, 108, 41, 57),
                        )
        )
      ),
    );
  }
}
