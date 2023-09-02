import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'home.dart';
import 'puntos.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  int puntos = 0;

  Future<void> cargarPuntos() async {
    final prefs = await SharedPreferences.getInstance();
    puntos = prefs.getInt('puntos') ?? 0;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(useMaterial3: true, colorSchemeSeed: Colors.pinkAccent),
      home: HomePage(puntos: Puntos()),
    );
  }
}
