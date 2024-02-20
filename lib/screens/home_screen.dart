// stl crea todo el stales windet

import 'package:flutter/material.dart';
import 'package:practica3/theme/app_theme.dart';

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
                      style: AppTheme.lightTheme.textTheme.headlineLarge),
              subtitle:  Text("recurperar informacion del textField",
                      style: AppTheme.lightTheme.textTheme.bodySmall),


              leading: const Icon(Icons.inbox_rounded, color: AppTheme.primaryColor,),
              trailing: const Icon(Icons.arrow_right_outlined, color: AppTheme.primaryColor,),
            ), 
            const Divider(height: 50,),
             ListTile(
              title: Text("Lista infinita",
                      style: AppTheme.lightTheme.textTheme.headlineLarge
                      ),
              subtitle: Text("Recuperar muchos elementos",
                         style: AppTheme.lightTheme.textTheme.bodySmall),

              leading: const Icon(Icons.leak_remove_outlined,color: AppTheme.primaryColor,),
              trailing: const Icon(Icons.arrow_right_outlined,color: AppTheme.primaryColor,),
            ),
            const Divider(height: 50,),
             ListTile(
              title: Text("notificaciones",
                                    style:AppTheme.lightTheme.textTheme.headlineLarge),
              subtitle: Text("manejo de notificaciones",
                                        style: AppTheme.lightTheme.textTheme.bodySmall),

              trailing: const Icon(Icons.arrow_right_outlined, color: AppTheme.primaryColor,),
              leading: const Icon(Icons.notification_important, color: AppTheme.primaryColor,),
            )
          ],
        )
 );
}
}