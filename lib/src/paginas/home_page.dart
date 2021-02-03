/*
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final estiloTexto = new TextStyle (fontSize:25)
  final conteo = 10;

  @override 
  Widget build(BuildContext context){   // este es el metodo que sirve para dibujar el Widget
    return Scaffold(
      appBar: AppBar(
        title: Text('Titulo'),
        centerTitle: true,
      ), // AppBar
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Numero de clicks', style: estiloTexto),
            Text('$conteo', style:estiloTexto),
          ], // <Widget>[]
        ) // Column
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: (){
          print('Hola mundo');
          // conteo = conteo +1;
        },
      ), // FloatingActionButton
    ); // Scaffold
  }
}
*/