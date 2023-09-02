import 'package:flutter/material.dart';
import 'puntos.dart';

class PaginaDos extends StatelessWidget {
  final Puntos puntos;

  PaginaDos({required this.puntos});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Página Dos')),
      body: Center(
        child: Text('Tienes un total de puntos: ${puntos.puntos}'),
      ),
    );
  }
}
