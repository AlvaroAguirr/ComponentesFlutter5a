import 'package:flutter/material.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _InputsState();
}

class _InputsState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("ventana de entrada "),

    );
  }
}