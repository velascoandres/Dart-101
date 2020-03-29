# Dart-101
[Ir al indice principal]()


# Variables y constantes

##Indice
1. [Variables](#variables)
2. [Constantes](#constantes)
4. [Variables tipadas](#variables-tipadas)
4. [Constantes tipadas](#constantes-tipadas)


## Variables
Espacios en memoria para almacenar un valor, es decir el valor es mutable

````dart
  // declarar variable
  var edad = 32;
  print(edad); // 32
  // declarar variable sin tipar
  var nombre = 'Andres';
  print(nombre); // Andres
````

## Constantes
Mismas caracterisitcas pero su contenido no cambia a lo largo
de la ejecucion del programa, contenido inmutable.

```dart
// declarar variable-constante
  const edadConstante = 12;
  
```

## Variables tipadas
Podemos tipar a las variables para que acepten un solo tipo de dato.

### String
```dart
  // declarar variable tipada
  String nombreTipado = 'Andres V.';
  print(nombreTipado); // Andres V.
```

### int
```dart
  // declarar variable tipada
  int edad = 23;
```

### double
```dart
  // declarar variable tipada
  double edad = 23.2;
```

## Constantes tipadas
De igual forma podemos definir una variable de un tipo que sea inmutable.
```dart
    // Constante tipada
    final double pi = 3.14;
```