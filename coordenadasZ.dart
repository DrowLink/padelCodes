

void main() {
  print(busquedatorneoZ(["1", "2", "3", "4"], "1"));
}

List<String> busquedatorneoZ(List<String> listaJugadores, String nombreJugador) {
  List<List<List<String>>> rondas = [];

  for (int i = 0; i < listaJugadores.length - 1; i++) {
    List<List<String>> ronda = [];
    for (int j = 0; j < listaJugadores.length ~/ 2; j++) {
      ronda.add([listaJugadores[j], listaJugadores[j + listaJugadores.length ~/ 2]]);
    }
    rondas.add(ronda);

    String jugador = listaJugadores.removeLast();
    listaJugadores.insert(1, jugador);
  }

  List<String> posicionesJugador = [];
  for (int i = 0; i < rondas.length; i++) { 
    for (int j = 0; j < rondas[i].length; j++) { 
      for (int k = 0; k < rondas[i][j].length; k++) { 
        if (rondas[i][j][k] == nombreJugador) {
          posicionesJugador.add(k.toString()); // Agregar solo la posición del jugador (z) como string
          break; // Salir del bucle interno una vez encontrado el jugador en el partido
        }
      }
    }
  }

  return posicionesJugador;
}