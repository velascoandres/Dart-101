# Tipos de datos
Los tipos de datos son objetos. El que sean objetos indican que van a tener un valor por defecto igual a nulo

## Indice

1. Numbers

2. String

3. Boolean

3. List

4. Maps



## Numbers
```dart
    int numero = 15;
    double valorDouble = 14.45;
```

## Strings
Cadenas de texto.

```dart
  String nombre = 'Andres V.';
  String primerNombre = nombre.substring(0, 6);
  print(nombre + ' ' + primerNombre); // Andres V. Andres
```
Si queremos concatenar strings.

```dart
  String calle = 'Pinta';
  String avenida = '12 de Octubre';
  final String direccion = '$calle - $avenida';
  print(direccion); // Pinta - 12 de Octubre
```

## Boolean
Contienen valores `true` o `false`. 

```dart
  int lado = 2;
  int ancho = 2;
  int area = 4;
  bool esMismaArea = lado * ancho == area ? true : false;
  print(esMismaArea); // true
```  

## List
Son arreglos los cuales pueden estar tipados o no.

```dart
  final List<String> finesSemana = ['Viernes', 'Sabado', 'Domingo'];
  const listaMixta = ['pelon', 0.2, true, ['pelon x2', []]];
```


## Maps
Son diccionarios donde cada uno de sus elementos estan compuesto por
una clave  un valor. Se puede tipar la clave y el valor.

```dart
 const usuario = {
    'nombre': 'Juan',
    'apellido': 'Pecados',
    'correo': 'calvo@brazzers.com',
  };
```

Para poder accedar a una valor del diccionario utilizamos su clave:

```dart
  var correo = usuario['correo'];
  print(correo); // calvo@brazzers.com
```

Ahora veamos un diccionario tipado, donde su clave sera del tipo `String` y su valor sera del tipo `int`.

```dart
    Map<String,int> usuarioTipado = {
        'edad': 23,
        'altura': 2,
      };
      final int edad = usuarioTipado['edad'];
      print(edad); // 23
```

Otro ejemplo:

```dart
  Map<int,  String> dias = {
    1: 'Lunes',
    2: 'Martes',
    3: 'Miercoles'
  };
  String miercoles = dias[3];
  print(miercoles); // Miercoles
```   