import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

// el statefull widget consta de dos clases, o sea de dos partes
// la primera es el StateFullWidget como tal y el segundo es el estado que va a manejar ese StateFullWidget

class ContadorPage extends StatefulWidget {
  // el nombre que le queramos dar, en este caso ContadorPage
  @override
  createState() => _ContadorPageState();
  // el createState necesita retornar una nueva instancia de mi ContadorPageState
  // return new _ContadorPageState();

}

// clase que indica el estado de ese StateFullWidget
class _ContadorPageState extends State<ContadorPage> {
  // colocar la palabra State es un estandar, es el state el que va a manejar el contador page
// esta clase solo se va a utilizar dentro de este archivo contador_page, no va a ser usada fuera de la misma, por eso se hace privada con el guion bajo
  //TextStyle estiloTexto = new TextStyle(fontSize: 25);
  final _estiloTexto = new TextStyle(
      fontSize:
          25); // debe ser final porque así es como lo permiten los StatelesWidget
  int _conteo = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
// para ver todas las propiedades que tiene el scaffold, o cualquier widget o cualquier elemento
// presionar Ctrl + barra espaciadora
        appBar: AppBar(title: Text('Aplicación Contador'), centerTitle: true),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Numero de pulsaciones',
                style: _estiloTexto,
              ),
              Text('$_conteo', style: _estiloTexto),
              // Text(conteo.toString(), style: estiloTexto),
            ],
          ),
          // la mayoria de los widgets solo pueden contener un hijo, o sea un child
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons
              .add), // buscar iconos en la pagina material icons   https://material.io/tools/icons/?style=baseline
          //   child: Text('Hola'),
          onPressed: () {
            // print('Hola mundo!!!2');

            setState(() {
              _conteo++;
            }); // se encarga de que el numero cambie al pulsar el boton, redibuja el widget
          }, // disabled = true, es como que deshabilitemos el boton si lo ponemos null
        ));
  }
}
