void main(){
  // suma - resta
  int numero1 = 21;
  int numero2 = 3;
  int numero3 = 3;
  final int resultado = numero1 + numero2 - numero3;
  print(resultado); // 21

  // Multiplicacion
  int resultadoMultiplicaicon = numero3 * numero2;
  print(resultadoMultiplicaicon); // 9

  // Division
  double resultadoDivision = numero1 / numero2;
  print(resultadoDivision); // 7

  // Modulo
  int resultadoMod = numero1 % 2;
  bool esPar = resultadoMod == 0;
  String paridad = esPar ? 'par' : 'impar';
  print('El numero $numero1 es $paridad'); // El numero 21 es impar

}