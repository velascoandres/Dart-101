# Flujos de control 

[Ir al indice principal](https://github.com/velascoandrs/Dart-101/blob/master/README.md)


## Indice

1. [if-else](#if-else)
2. [switch](#switch)
3. [for-loop](#for-loop)
4. [for-each](#for-each)
5. [while](#while)
6. [do-while](#do-while)



## if-else
```dart
 bool esPar = 2 % 2 == 0;
  if (esPar) {
    print('Es par');
  }
  {
    print('Es impar');
  }
  String resultado = esPar ? 'Par' : 'Impar';
  print('El numero 2 es: $resultado'); // El numero 2 es: Par
```

## switch
```dart
  String dia = 'Martes';
  switch (dia) {
    case 'Lunes':
      print('Es lunes');
      break;
    case 'Martes':
      print('Es martes');
      break;
    case 'Miercoles':
      print('Es miercoles');
      break;
    default:
      throw ('No hay opcion');
      break;
  }
```

## for-loop
```dart
  // for-loops
  final List<int> numeros = [1, 2, 3, 4, 5, 6];
  int longitud = numeros.length;
  for (int contador = 0; contador < longitud; contador++){
    int numeroActual = numeros[contador];
    print('El numero actual es: $numeroActual');
  }
```

## for-each

```dart
  final List<int> numeros = [1, 2, 3, 4, 5, 6];
  for (int numero in numeros) {
        bool esPar = numero % 2 == 0;
        if (esPar) {
          print('El numero: $numero es par');
        } else {
          print('El numero: $numero es impar');
        }
  }
```


## while
```dart

  // while
  int numeroIteraciones = 10;
  int iteracionActual = 0;
  while( iteracionActual < numeroIteraciones){
    print('Iteracion: $iteracionActual');
    iteracionActual ++;
  }
```


## do-while
```dart
  bool iterar = true;
  int contador = 0;
  final List<int> numeros = [1, 2, 3, 4, 5, 6];
  do{
    int numero = numeros[contador];
    bool debeDetenerse = numero == 4;
    print('Numero: $numero');
    if(debeDetenerse){
      print('Esta es la ultima iteracion');
    }else{
      print('Seguir iterando...');
    }
    iterar = !debeDetenerse;
    contador ++;
  }while(iterar);
```


