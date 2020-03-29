class Vehiculo {
  String color;
  String modelo;
  String marca;

  Vehiculo(String marca, String modelo) {
    this.marca = marca;
    this.modelo = modelo;
  }

  // Sobre carga de construcores
  Vehiculo.from(this.marca, this.modelo, this.color);

  // Desde la instancia de otro
  Vehiculo.fromVehiculo(Vehiculo vehiculo) {
    this.marca = vehiculo.marca;
    this.modelo = vehiculo.modelo;
  }

  // Desed la instancia de un diccionario
  Vehiculo.fromJson(
    Map<String, String> vehiculo,
  ) {
    this.color = vehiculo['color'];
    this.marca = vehiculo['marca'];
  }

  void arrancar() {
    print('auto: $marca, Arrancando...');
  }

  void cambiarValor(int numero) {
    numero = numero + 1;
  }
}

void main() {
  // Crear una instancia de la clase
  var auto = new Vehiculo(
    'ford',
    'azul',
  );
  auto.color = 'azul';
  auto.marca = 'ford';
  auto.arrancar(); // auto: suzuki, Arrancando...

  // diccionario
  Map<String, String> vehiculoJSON = {
    'color': 'verde',
    'marca': 'suzuki',
  };
  Vehiculo miVehiculo = new Vehiculo.fromJson(vehiculoJSON);
  miVehiculo.arrancar(); // auto: ford, Arrancando...
}
