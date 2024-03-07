import 'package:flutter/material.dart';
import 'package:practica3/theme/app_theme.dart';

class ImagesScreen extends StatefulWidget {
  const ImagesScreen({super.key});

  @override
  State<ImagesScreen> createState() => _ImagesScreenState();
}

class _ImagesScreenState extends State<ImagesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("pantalla de imagenes", style: AppTheme.lightTheme.textTheme.headlineLarge
        ),
      ),
      body: ListView(
        children: [
          imageCard(),
          imagesweb()
        ],
      )
    );
  }
 Card imageCard(){
return Card(
shape: RoundedRectangleBorder(
  borderRadius:  BorderRadius.circular(30),),
  margin:  const EdgeInsets.all(20),
  elevation: 10,
  child:  Column(
    children: [
      ClipRRect(
        borderRadius: BorderRadius.circular(30),  
        child: const Image(
                  image: AssetImage('assets/img/descargar.jpeg'),
        
                ),
      ),
       Container(
        padding: EdgeInsets.all(10),
        child: Text("una imagen de stock extraidade la web que muestra a un ladron con un pasa montañas y una barra de metal para perturbar puertas "),
      )
    ],
  ),
);
 }
 
  Widget imagesweb() {
    return Center(
      child: Image.network('https://previews.123rf.com/images/bialasiewicz/bialasiewicz1404/bialasiewicz140400536/27419265-hombre-joven-que-sufre-de-dolor-de-estómago.jpg'),
    );
  }
}