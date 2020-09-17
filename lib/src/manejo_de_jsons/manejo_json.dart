import 'dart:convert';

import 'package:flutter/services.dart';

class _Manejo_json {
  // creacion de una clase
  List<dynamic> lista_dinamica = []; // lista con un tipo de dato dinamico

  _Manejo_json() {
    // metodo constructor de la clase manejo json
    _cargar_datos(); // llamamos al metodo Cargar_datos donde se va a leer el json
  }

  _cargar_datos() {
    // en este metodo se llama al archivo json
    rootBundle.loadString("archivos_json/menu_opts.json").then((datos) {
      // le pasamos por parametro la ruta del archivo
      print(datos);
    });
  }
}

_Manejo_json objeto_manejoJson =
    new _Manejo_json(); // creamos un objeto de la clase para llamarlo desde otra parte del proyecto
