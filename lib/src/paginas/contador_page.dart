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
        // buscar iconos en la pagina material icons   https://material.io/tools/icons/?style=baseline
        floatingActionButton: _crearBotones());
  }

  Widget _crearBotones() {
    return Row(
      // el mainAxisAlignment en un row y una columna no son iguales
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[  // esta propiedad contiene una lista de widgets
        SizedBox(width: 30.0),
        FloatingActionButton(
            onPressed: _reset, child: Icon(Icons.exposure_zero)),
        Expanded(child: SizedBox()),
        FloatingActionButton(onPressed: _sustraer, child: Icon(Icons.remove)),
        SizedBox(width: 5.0),
        FloatingActionButton(
            onPressed: _agregar,
            child: Icon(Icons
                .add)) // ojo, en este caso se deja el metodo _agregar sin parentesis, porque se va a ejecutar hasta que se presione el boton
      ],
    );
  }

  void _agregar() {
    setState(() {
      // el metodo setState solo existe dentro de los StateFullWidgets
      _conteo++;
    });
    // setState( () => _conteo++ );
  }

  void _sustraer() {
    setState(() => _conteo--);
  }

  void _reset() {
    setState(() => _conteo = 0);
  }
}
