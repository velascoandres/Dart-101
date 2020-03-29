abstract class MedioTransporte {
  String tipo;

  MedioTransporte(this.tipo);
}

abstract class Vehiculo extends MedioTransporte {
  String color;
  String modelo;
  String marca;

  Vehiculo(this.color, this.marca) : super('Mecanico');

  // Defino un metodo para implementar
  void arrancar();

  String obtenerColor() {
    return this.color;
  }
}

class TransporteAreo {
  String nombre;

  TransporteAreo(this.nombre);
}

abstract class Avion extends TransporteAreo {
  String tipo;

  Avion(this.tipo) : super('Avion');

  void volar();
}

class AvionComercial extends Avion{
  int totalPasajeros;
  AvionComercial(this.totalPasajeros): super('comercial');
  @override
  void volar() {
    print('Encendiendo turbinas');
  }
}

// interfaces
abstract class Transporte {
  int numeroAsientos;
  void mostrarTransporte();
}

class AutoMovil extends Vehiculo implements Transporte {
  int numeroAsientos;
  AutoMovil(String color, String marca) : super(color, marca);

  @override
  void arrancar() {
    print('Arrancando');
  }

  @override
  void mostrarTransporte() {
    print('Hola soy un automovil');
  }
}

void main() {
  AutoMovil automovil = new AutoMovil('rojo', 'ford');
  print(automovil.obtenerColor()); // rojo
  automovil.arrancar(); // Arrancando
  automovil.mostrarTransporte(); // Hola soy un automovil

  AvionComercial avion = new AvionComercial(500);
  avion.volar(); // Encendiendo turbinas
  print(avion.tipo); // Comercial
  print(avion.nombre); // Avion
}
