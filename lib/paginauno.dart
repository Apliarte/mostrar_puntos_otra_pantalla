import 'package:flutter/material.dart';
import 'puntos.dart';

class PaginaUno extends StatelessWidget {
  final Puntos puntos;

  PaginaUno({required this.puntos});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Página Uno')),
      body: Center(
        child: Text('Tienes un total de puntos: ${puntos.puntos}'),
      ),
    );
  }
}
