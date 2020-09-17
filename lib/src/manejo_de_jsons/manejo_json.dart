import 'dart:convert';

import 'package:flutter/services.dart';

class _Manejo_json {
  // creacion de una clase
  List<dynamic> lista_dinamica = []; // lista con un tipo de dato dinamico

/* creamos el metodo cargar_datos, debe ser un future con async y await para 
poder manejar la carga de datos antes de que se cargue la vista */

  Future<List<dynamic>> cargar_datos() async {
    // en este metodo se llama al archivo json
    final respuesta =
        await rootBundle.loadString("archivos_json/menu_opts.json");
    // le pasamos por parametro la ruta del archivo

    // Transformacion de la lectura del Json a MAP

    Map mapa_json = jsonDecode(
        respuesta); // guardamos los datos del archivo json en el mapa

    lista_dinamica = mapa_json[
        'rutas']; // pasamos el mapa a la lista que se declaro al inicio, especificamos la llave del json
    return lista_dinamica;
  }
}

_Manejo_json objeto_manejoJson =
    new _Manejo_json(); // creamos un objeto de la clase para llamarlo desde otra parte del proyecto
