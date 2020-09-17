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

      // Transformacion de la lectura del Json a MAP
      Map mapa_json =
          jsonDecode(datos); // guardamos los datos del archivo json en el mapa
      lista_dinamica = mapa_json[
          'rutas']; // pasamos el mapa a la lista que se declaro al inicio, especificamos la llave del json
    });
  }
}

_Manejo_json objeto_manejoJson =
    new _Manejo_json(); // creamos un objeto de la clase para llamarlo desde otra parte del proyecto
