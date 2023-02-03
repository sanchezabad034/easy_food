void main() {
  final nombre = 'Fued';

  //saludar (nombre, "Greetings");
  saludar2(nombre: nombre, mensaje: '');
}

void saludar(String nombre, [String mensaje = 'Hi']) {
  print('$mensaje $nombre');
}

void saludar2({
  required String nombre,
  required String mensaje,
}) {
  print('$mensaje $nombre');
}
