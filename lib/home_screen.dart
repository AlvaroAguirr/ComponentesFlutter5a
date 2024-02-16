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
          children:<Widget> [
             ListTile(
              title: Text("Entradas",
                      style: Theme.of(context).textTheme.headlineLarge),
              subtitle:  Text("recurperar informacion del textField",
                      style: Theme.of(context).textTheme.bodySmall),
              leading: const Icon(Icons.inbox_rounded),
              trailing: const Icon(Icons.arrow_right_outlined),
            ),
            const Divider(height: 50,),
             ListTile(
              title: Text("Lista infinita",
                      style: Theme.of(context).textTheme.headlineLarge),
              subtitle: Text("Recuperar muchos elementos",
                          style: Theme.of(context).textTheme.bodySmall),
              leading: const Icon(Icons.leak_remove_outlined),
              trailing: const Icon(Icons.arrow_right_outlined),
            ),
            const Divider(height: 50,),
             ListTile(
              title: Text("notificaciones",
                                    style: Theme.of(context).textTheme.headlineLarge),
              subtitle: Text("manejo de notificaciones",
                                        style: Theme.of(context).textTheme.bodySmall),
              trailing: const Icon(Icons.arrow_right_outlined),
              leading: const Icon(Icons.notification_important),
            )
          ],
        )
 );
    
       }
}