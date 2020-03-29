void main(){
  int numero1 = 4;
  int numero2= 2;
  bool esMayor = numero1 > numero2;
  print(esMayor); // true
  bool sonIguales = numero1 == numero2;
  print(sonIguales); // false
  bool sonDiferentes = numero1 != numero2;
  print(sonDiferentes); // true

  int numero3 = 3;
  bool estaEnRango = numero3 >= numero2 && numero3 <= numero1;
  print(estaEnRango); // true
}