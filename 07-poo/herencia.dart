class Vehiculo {
  String color;
  String modelo;
  String marca;
  Vehiculo(this.color, this.modelo, this.marca);
  void mostrarVehiculo() {
    print('Marca: $marca\n'
        'Modelo: $modelo\n'
        'Color: $color');
  }
  void arrancar(){
    print('arrancando...');
  }
}

class Camion extends Vehiculo {
  // con super llamamos al constructor de la clase padre
  Camion(String color, String modelo, String marca) : super(color, modelo, marca);
  Camion.fromJson(Map<String, String> camion) : super(camion['color'], camion['modelo'], camion['marca']);
  @override
  void arrancar(){
    print('Camion: $modelo, arrancando');
  }
}

void main() {
  Camion camioncito = new Camion(
    'gris',
    'IV2',
    'Hino'
  );
  camioncito.mostrarVehiculo();
  // Marca: Hino
  // Modelo: IV2
  // Color: gris
  camioncito.arrancar(); // Camion: IV2, arrancando

}
