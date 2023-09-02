import 'package:flutter/material.dart';
import 'puntos.dart';

class PaginaTres extends StatelessWidget {
  final Puntos puntos;

  PaginaTres({required this.puntos});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Página Tres')),
      body: Center(
        child: Text('Tienes un total de puntos: ${puntos.puntos}'),
      ),
    );
  }
}
