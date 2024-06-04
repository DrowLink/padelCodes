



void main() {
  print(torneoCreator(["1", "2", "3", "4", "5", "6", "7", "8"]));
}


List<dynamic> torneoCreator(
  List<String> listaJugadores
) {
  /// MODIFY CODE ONLY BELOW THIS LINE

  List<List<List<String>>> rondas = [];

  for (int i = 0; i < listaJugadores.length - 1; i++) {
    List<List<String>> ronda = [];
    for (int j = 0; j < listaJugadores.length ~/ 2; j++) {
      ronda.add(
          [listaJugadores[j], listaJugadores[j + listaJugadores.length ~/ 2]]);
    }
    rondas.add(ronda);

    // Rotar jugadores para la siguiente ronda
    String jugador = listaJugadores.removeLast();
    listaJugadores.insert(1, jugador);
  }
  return rondas;
  
}