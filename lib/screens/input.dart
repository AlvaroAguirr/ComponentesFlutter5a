import 'package:flutter/material.dart';
import 'package:practica3/theme/app_theme.dart';
class Inputs extends StatefulWidget {
  const Inputs({super.key});

  @override
  State<Inputs> createState() => _InputsState();
}

class _InputsState extends State<Inputs> {
  // varies del entrada
  bool valueSwitch = false;
  double sliderValue= 0.0;
  int foodRadio =0;


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text("entradas")
      ),

      body: Padding(
        padding: const EdgeInsets.all(35.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,

          children: [

            entradaTexto(),
            entradaSwitch(),
            entradaSlider(),
            entradasRadio(),
               const ElevatedButton(
                 onPressed: null,
                 child:  Text(
                "guardar")),

          ],
        ),
      ),
      bottomNavigationBar:  BottomNavigationBar(
        items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),label: "inicio"),
        BottomNavigationBarItem(
            icon:Icon(Icons.abc_sharp), label: "input")
      ]),
    );
  }

  TextField entradaTexto() {
    return TextField(
          style: AppTheme.lightTheme.textTheme.headlineMedium,
            decoration: InputDecoration(
            border: const UnderlineInputBorder(),
            labelText: "scrib tu nombre",
            labelStyle: AppTheme.lightTheme.textTheme.headlineLarge
            ),
        );
  }
 Row entradaSwitch(){
  return Row(
  children: [
    const FlutterLogo(),
    Text("¿Te gusta Flutter?",
    style: AppTheme.lightTheme.textTheme.headlineLarge),
Switch (
value: valueSwitch,
  onChanged:(value){
    setState(() {
      valueSwitch = value;
    });
  }
)

  ],
  );
 }
 
  Column entradaSlider() {
    return Column(
      children: [
        Text("¿Qué tanto te gusta flutter?",
         style: AppTheme.lightTheme.textTheme.headlineLarge,),

         Slider(
          min: 0.0,
          max: 15.0,
          value: sliderValue,
          divisions:45,
          label:"${sliderValue.round()}",
          onChanged: (value){
            setState(() {
            sliderValue= value;
            print("valor del slider: $sliderValue");

            });
          }),
                  ],
    );
  }
  
  Column entradasRadio() {
    return Column(children: [
    const Text("¿what do you want?"),
    ListTile(
      title: Text("Tacos de pastor",
      style: AppTheme.lightTheme.textTheme.bodySmall),
      leading:Radio(
        value: 1,
        groupValue: foodRadio,
          onChanged: (value){
            setState(() {
            foodRadio= value!;
            print("valor del slider: $foodRadio");

            });
          }
      ),
    ),
    ListTile(
      title: Text("Chileatole",
      style: AppTheme.lightTheme.textTheme.bodySmall),
      leading:Radio(
        value: 2,
        groupValue: foodRadio,
          onChanged: (value){
            setState(() {
            foodRadio= value!;
            print("valor del slider: $foodRadio");

            });
          }
      ),
    ),
    ],
    );
  }

}