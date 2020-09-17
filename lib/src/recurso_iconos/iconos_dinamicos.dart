import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Map<String, IconData> nombre_iconos = {
  'add_alert': Icons.add_alert,
  'accessibility': Icons.accessibility,
  'folder_open': Icons.folder_open
};

Icon getIcon(String nombre_icono) {
  return Icon(
    nombre_iconos[nombre_icono],
    color: Colors.red,
  );
}
