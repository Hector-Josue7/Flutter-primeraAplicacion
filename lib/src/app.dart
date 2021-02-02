// este archivo app.dart va a contener toda la logica de mi material App
import 'package:flutter/material.dart';
import 'package:flutter_vscode3/src/paginas/contador_page.dart';
//import 'package:flutter_vscode3/src/paginas/home_page.dart';

// todos los widgets son clases comunes y corrientes
class MyApp extends StatelessWidget {
  @override // esta palabra es para sobreescribir un metodo
  Widget build(context) {
    return MaterialApp(
      debugShowCheckedModeBanner:
          false, // se encarga de quitar el banner que sale en la esquina superior derecha
      home: Center(
        // el center es otro widget que centra su hijo
        // child:  HomePage(),  // pulsar ctrl .
        child: ContadorPage(),
      ),
    );
  }
}
