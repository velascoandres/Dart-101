void main() {
  var saludo = saludar('Andres');
  print(saludo);
  var saludoCoro = saludarCorto('Andres');
  print(saludoCoro);
  saludos('Andres');
  saludos('Andres', 'Velasco', 23);
  imprimirSaludo(nombre: 'Andres', apellido: 'Velasco');
  int resultado = factorial(6);
  print(resultado);
}

String saludar(String nombre) {
  return 'hola $nombre';
}

String saludarCorto(String nombre) => 'hola $nombre';

// Funcion con argumentos opcionales posicionales
void saludos(String nombre, [String apellido, num edad]) {
  String apellidoDefinitivo = apellido != null ? apellido : '';
  String edadDefinitiva = edad != null ? edad.toString() : '';
  print('Bienvenido $nombre $apellidoDefinitivo $edadDefinitiva');
}

// parametros por nombre
void imprimirSaludo({String nombre = 'Juan', String apellido = 'Pecados'}) {
  StringBuffer saludo = new StringBuffer("Bienvenido");
  if (nombre != null) {
    saludo.write('$nombre');
  }
  print(saludo.toString());
}

// funcion recursiva
int factorial(int numero){
  if(numero != 1){
    return numero * factorial(numero - 1);
  }
  return 1;
}