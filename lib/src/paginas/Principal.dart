import 'package:flutter/material.dart';
import 'package:pantalla_inicio/src/manejo_de_jsons/manejo_json.dart';

class Principal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // ignore: todo
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Pantalla principal"),
      ),
      body:
          _listaVews(), // llamamos al metodo listaVews que contiene un widget de tipo ListView
    );
  }

  Widget _listaVews() {
    // Metodo de tipo widget

    print(objeto_manejoJson
        .lista_dinamica); // llamamos a la clase del manejo del json y llamamos a la lista donde se guardaron los datos

    return ListView(
      // que retorna un ListView que es un Widget
      children:
          _listaItems(), // retornamos la listView que se llena en el metodo listItems por eso lo llamamos
    );
  }

  List<Widget> _listaItems() {
    //Metodo de tipo list widget
    return [
      // retornamos una lista de Widgets puden ser de cualquier tipo en este caso seran listTitle
      ListTile(
        title: Text("fhfk"),
      ),
      ListTile(
        title: Text("fhfk"),
      ),
    ];
  }
}
