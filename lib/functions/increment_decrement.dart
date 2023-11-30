// contador.dart
class ContadorController {
  int _contador = 0;

  int get contador => _contador;

  void incrementar() {
    _contador++;
  }

  void decrementar() {
    _contador--;
  }
}
