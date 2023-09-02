import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'puntos.dart';
import 'paginauno.dart';
import 'paginados.dart';
import 'paginatres.dart';

class HomePage extends StatefulWidget {
  final Future<SharedPreferences> _prefs = SharedPreferences.getInstance();
  late Future<int> puntos;

  HomePage({required this.puntos});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    widget.puntos.cargarPuntos();
  }

  void sumarPunto() {
    setState(() {
      widget.puntos.puntos++;
      widget.puntos.guardarPuntos();
    });
  }

  void restarPunto() {
    setState(() {
      widget.puntos.puntos--;
      widget.puntos.guardarPuntos();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('HomePage')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Tienes un total de puntos: ${widget.puntos.puntos}'),
            ElevatedButton(
              onPressed: sumarPunto,
              child: Text('Sumar punto'),
            ),
            ElevatedButton(
              onPressed: restarPunto,
              child: Text('Restar punto'),
            ),

//
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PaginaDos(puntos: widget.puntos),
                  ),
                );
              },
              child: Text('Ir a Página Dos'),
            ),

//

            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PaginaTres(puntos: widget.puntos),
                  ),
                );
              },
              child: Text('Ir a Página Tres'),
            ),

            //
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PaginaUno(puntos: widget.puntos),
                  ),
                );
              },
              child: Text('Ir a Página Uno'),
            ),
            //
            // Agrega botones para las otras páginas de manera similar
          ],
        ),
      ),
    );
  }
}
