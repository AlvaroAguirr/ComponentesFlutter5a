// stl crea todo el stales windet


import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
 return   Scaffold(
      appBar: AppBar(
      title: const Text("App de componenetes de flutter"),
      ),
        body: ListView(
          children: const<Widget> [
            ListTile(
              title: Text("Entradas"),
              subtitle: Text("recurperar informacion del teextField"),
              leading: Icon(Icons.inbox_rounded),
              trailing: Icon(Icons.arrow_right_outlined),
            ),
            Divider(height: 50,),
            ListTile( 
              title: Text("Lista infinita"),
              subtitle: Text("Recuperar muchos elementos"),
              leading: Icon(Icons.leak_remove_outlined),
              trailing: Icon(Icons.arrow_right_outlined),
            ),
            Divider(),
            ListTile(
              title: Text("notificaciones"),
              subtitle: Text("manejo de notificaciones"),
              trailing: Icon(Icons.arrow_right_outlined),
              leading: Icon(Icons.notification_important),
            )
          ],
        )
 );
    
       }
}