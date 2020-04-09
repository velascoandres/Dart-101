import 'dart:html';

void main(List<String> args) {
  final ButtonElement boton = querySelector('button'); // Obtenemos la referencia del boton
  final InputElement input = querySelector('input');
  boton
  .onClick
  .take(3)
  .where(
    (evento) => input.value == 'chile'
  )
  .listen(
    (respuesta) => print('has ganado'),
    onError: (error) => print('incorrecto'),
    onDone: () => print('fin del juego'),
  );
  // boton.onClick.timeout(
  //   Duration(seconds: 1),
  //   onTimeout: (sink) => sink.addError('Perdiste')
  // )
  // .listen(
  //   (evento) => evento,
  //   onError: (error) => print(error),
  // );
}