# Programacion orientada a objetos
[Ir al indice principal](https://github.com/velascoandrs/Dart-101/blob/master/README.md)


# Indice

1. [Clase](#clase)
2. [Constuctor](#constructor)

    2.1 [Sobre carga de constructores](#sobrecargar-de-constructores)
3. [Herencia](#herencia)
4. [Clase Abstracta](#clase-abstracta)
5. [Interfaz](#interfaces)

## Clase
Una clases es la definicion de un conjunto de objteos que comparten
caracteristicas comunes
```dart
    class Vehiculo { }
```

## Constructor
Un constructor es simplemente el mecanismo para establecer
un estado inicial a un objeto.

```dart
    class Vehiculo {
      String color;
      String modelo;
      String marca;
    
      Vehiculo(String marca, String modelo) {
        this.marca = marca;
        this.modelo = modelo;
      }
    }
```

### Sobrecargar de constructores
```dart
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
```

## Herencia
Se encarga de heredar atributos, metodos dentro de una jerarquia.

Ejemplo:

>Vehiculo
* Camion
* Auto
* Motocicleta

Definimos la clase padre:
```dart
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
```

Definimos la clase hija herendando del padre.
> Con `super` llamamos al constructor de la clase padre.


````dart
class Camion extends Vehiculo {
      Camion(String color, String modelo, String marca) : super(color, modelo, marca);
      Camion.fromJson(Map<String, String> camion) : super(camion['color'], camion['modelo'], camion['marca']);
      @override
      void arrancar(){
        print('Camion: $modelo, arrancando');
      }
    }
````


## Clase Abstracta
Son aquellas que por si mismas no se pueden identificar como algo 'concreto',
pero si poseen determinads caracteristicas que son comunes en otras clases que pueden ser creadas a partir
de ellas.

### Caracteristicas

* Una clase abstracta no se puede ser instanciada
* Si se puede heredar y las hijas seran las encargadas de agregar la funcionalidad a los metodos abstractos.
* Si no lo hacen asi, las clases hijas deben ser tambien abstractas.
* Una clase abstracta puede tener metodos que sean abstractos o que no lo sean.
* Los metodos abstractos pueden ser `public` o `protected` (En DART no existen como tal estos modificadores de acceso).

Ejemplo:

Vamos a tener la siguiente jerarquia:

* MedioTransporte: `clase abstracta`
    * Vehiculo: `clase abstracta`
        * Automovil: `clase concreta`


Entonces definimos la clase abstracta principal:

```dart
abstract class MedioTransporte {
  String tipo;

  MedioTransporte(this.tipo);
}

```

Se va a definir una clase abstracta para vehiculo.


````dart
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
````
> Nota: En la clase implemente un metodo y tambien solo declare otro para ser implementado.


Ahora vamos definir la clase en concreto que sera: `Automovil`.

```dart
class AutoMovil extends Vehiculo {
  AutoMovil(String color, String marca) : super(color, marca);

  @override
  void arrancar() {
    print('Arrancando');
  }
}
```

Instanciamos y probamos:

```dart
 void main(){
    AutoMovil automovil = new AutoMovil('rojo', 'ford');
    print(automovil.obtenerColor()); // rojo
    automovil.arrancar(); // Arrancando
    automovil.mostrarTransporte(); // Hola soy un automovil
 }
```

Vamos con otro ejemplo rapido:

* TransporteAreo: `clase concreta`
    * Avion: `clase abstracta`
        * AvionComercial: `clase concreta`


Definimos nuestra clase en concreto: `TransporteAreo`

```dart
class TransporteAreo {
  String nombre;

  TransporteAreo(this.nombre);
}

```
Definimos la clase abstracta: `TransporteAreo` que heredara de una clase concreta:

```dart
abstract class Avion extends TransporteAreo {
  String tipo;

  Avion(this.tipo) : super('Avion');

  void volar();
}
```
Definimos la clase en concreto: `Avion` 

```dart
class AvionComercial extends Avion{
  int totalPasajeros;
  AvionComercial(this.totalPasajeros): super('comercial');
  @override
  void volar() {
    print('Encendiendo turbinas');
  }
}
```

Instanciamos y probamos:

```dart
 void main(){
    AvionComercial avion = new AvionComercial(500);
    avion.volar(); // Encendiendo turbinas
    print(avion.tipo); // Comercial
    print(avion.nombre); // Avion 
 }
```


## Interfaces
Una interface es una variante de una clase abstracta con la condicion de que todos
sus metodos deben ser abstractos. Las interfaces proporcionan un comportamiento
a la clase que esta implementado la interfaz. En otras palabras las interfacez son un
contrato que deben cumplir las clases que las implementan.

### Caracteristicas 
* En una interfaz todos sus metodos son publicos y no se define nunca
la implementacion de los metodos.

* Una interfaz solamente puede extender de otras interfaces
* En una interfaz solamente puede haver metodos publicos.


Ejemplo:

Definimos nuestra inferfaz: `Transporte`

```dart
abstract class Transporte {
  int numeroAsientos;
  void mostrarTransporte();
}
```

Implementamos esta interfaz en la clase `Vehiculo` del ejemplo anterior:

```dart
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
```
Instanciamos y probamos:

```dart
void main() {
  AutoMovil automovil = new AutoMovil('rojo', 'ford');
  print(automovil.obtenerColor()); // rojo
  automovil.arrancar(); // Arrancando
  automovil.mostrarTransporte(); // Hola soy un automovil
}
```