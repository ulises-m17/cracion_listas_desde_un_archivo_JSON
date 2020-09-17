import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pantalla_inicio/src/paginas/Principal.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // ignore: todo
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Center(
        child: Principal(),
      ),
    );
  }
}
