void main() {
  // Los tipos de datos son objetos
  // El que sean objetos indican que van a tener un valor por defecto igual a nulo
  // Numbers
  int numero = 15;
  double valorDouble = 14.45;
  // String
  String nombre = 'Andres V.';
  String primerNombre = nombre.substring(0, 6);
  print(nombre + ' ' + primerNombre); // Andres V. Andres
  // Template string
  // Para concatenar strings.
  String calle = 'Pinta';
  String avenida = '12 de Octubre';
  final String direccion = '$calle - $avenida';
  print(direccion); // Pinta - 12 de Octubre
  // Boolean
  int lado = 2;
  int ancho = 2;
  int area = 4;
  bool esMismaArea = lado * ancho == area ? true : false;
  print(esMismaArea); // true
  // List (Array)
  final List<String> finesSemana = ['Viernes', 'Sabado', 'Domingo'];
  const listaMixta = ['pelon', 0.2, true, ['pelon x2', []]];
  // Maps (Dictionary)
  // Diccionario que funciona con clave valor
  const usuario = {
    'nombre': 'Juan',
    'apellido': 'Pecados',
    'correo': 'calvo@brazzers.com',
  };
  var correo = usuario['correo'];
  print(correo); // calvo@brazzers.com
  // Tambien se puede tipar tanto la llave como el valor.
  Map<String,int> usuarioTipado = {
    'edad': 23,
    'altura': 2,
  };
  final int edad = usuarioTipado['edad'];
  print(edad); // 23
  Map<int,  String> dias = {
    1: 'Lunes',
    2: 'Martes',
    3: 'Miercoles'
  };
  String miercoles = dias[3];
  print(miercoles); // Miercoles
}