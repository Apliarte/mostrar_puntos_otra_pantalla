import 'package:shared_preferences/shared_preferences.dart';

class Puntos {
  int puntos = 0;

  Future<void> cargarPuntos() async {
    final prefs = await SharedPreferences.getInstance();
    puntos = prefs.getInt('puntos') ?? 0;
  }

  Future<void> guardarPuntos() async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setInt('puntos', puntos);
  }
}
