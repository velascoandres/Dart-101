# Funciones
[Ir al indice principal](https://github.com/velascoandrs/Dart-101/blob/master/README.md)

## Indice
1. [Definir funcion](#definir-funcion)

    1.1 [Estructura](#estructura)
    
    1.2 [Sin retorno](#sin-retorno-void)
    
    1.3 [Con retorno](#con-retorno)
    
    1.4 [Funciones](#funciones-cortas)
    
2. [Parametros opcionales](#parametros-opcionales)

    2.1. [Paremetros opcionales por posicion](#parametros-opcionales-por-posicion)
    
    2.2. [Paremetros opcionales por nombre](#parametros-opcionales-por-nombre)

4. [Funcion recursiva](#funcion-recursiva)


### Definir funcion
Las funciones en dart pueden ser definidas de la siguiente manera:
#### Estructura
```dart
    <Tipo-de-Retorno> <nombreFuncion> (...parametros){
        ... cuerpo
        return <valor>; // Opcional dependiendo si es void
    } 
```


#### Sin retorno (`void`)
```dart
    void imprimirSaludo(String nombre){
      print('Hola $nombre');
    }
```

#### Con retorno
```dart
String generarSaludo(){
    return 'hola $nombre';
}
```

#### Funciones cortas
Son funciones que son definas en una sola linea:

```dart
String saludarCorto(String nombre) => 'hola $nombre';
```

### Parametros opcionales

Una funcion puede tener parametros opcionales y estos pueden ser posicionales o por nombre.

#### Parametros opcionales por posicion

Se definen estos parametros dentro de corchetes `[]`. Como su nombre lo indica
para llamar a la funcion tenemos que poner sus parametros de acuerdo la posicion
en como se haya definido la funcion.

```dart
void saludos(String nombre, [String apellido, num edad]) {
  String apellidoDefinitivo = apellido != null ? apellido : '';
  String edadDefinitiva = edad != null ? edad.toString() : '';
  print('Bienvenido $nombre $apellidoDefinitivo $edadDefinitiva');
}
```

Podemos llamar a la funcion con todos los parametros o solo con el nombre;

```dart
  saludos('Andres');
  saludos('Andres', 'Velasco', 23);
```

#### Parametros opcionales por nombre
Se definen estos parametros dentro de llaves `{}`, para llamar a la funcion tenemos que poner
sus parametros de acuerdo al nombre del perametro.


>Para poner argumentos opcionales dentro de las llaves usamos el operador `=` para asignar
>un valor por defecto al parametro.

```dart
void imprimirSaludo({String nombre = 'Juan', String apellido = 'Pecados'}) {
  StringBuffer saludo = new StringBuffer("Bienvenido");
  if (nombre != null) {
    saludo.write('$nombre');
  }
  print(saludo.toString());
}
```

Llamamos a la funcion:

```dart
  imprimirSaludo(nombre: 'Andres', apellido: 'Velasco');
```

### Funcion recursiva
Son funciones que se invocan a si mismas:

```dart
int factorial(int numero){
  if(numero != 1){
    return numero * factorial(numero - 1);
  }
  return 1;
}
```

```dart
  int resultado = factorial(6);
  print(resultado); // 720
```