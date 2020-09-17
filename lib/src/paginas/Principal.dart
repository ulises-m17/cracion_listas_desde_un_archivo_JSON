import 'package:flutter/material.dart';
import 'package:pantalla_inicio/src/manejo_de_jsons/manejo_json.dart';

class Principal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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

// objeto de la clase manejo_json
    objeto_manejoJson.cargar_datos().then((lista_dinamica) {
      print(lista_dinamica);
    });

    return FutureBuilder(
        future: objeto_manejoJson
            .cargar_datos(), // llamamos al metodo cargar datos que es el que contiene los datos del json
        builder: (context, AsyncSnapshot<List<dynamic>> snapshot) {
          return ListView(
              children:
                  _listaItems(snapshot.data)); // retornamos el widgets listView
        });
  }

  List<Widget> _listaItems(List<dynamic> data) {
    //Metodo de tipo list widget
    final List<Widget> widgets = [];

    data.forEach((element) {
      final Widget_temporal = ListTile(
        // creamos los widgets que contendra el listview de arriba
        title: Text(element[
            'texto']), // element accedera al contenido con el identificador texto del archivo json
        leading: Icon(Icons.add_location),
      );

      widgets..add(Widget_temporal)..add(Divider());
    });

    return widgets;
  }
}
