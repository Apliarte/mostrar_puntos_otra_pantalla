import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'home.dart';
import 'puntos.dart';

late final Puntos puntos;
void main() {
  final Puntos puntos;
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Future<void> cargarPuntos() async {
    final prefs = await SharedPreferences.getInstance();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: HomePage(puntos: Puntos()),
    );
  }
}
