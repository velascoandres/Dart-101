import 'dart:html';
import 'dart:async';

void main(List<String> args) {
  final InputElement correoInput = querySelector('input');
  final DivElement divErrores = querySelector('div');
  final validadorCorreo =
      StreamTransformer.fromHandlers(handleData: (String valorInput, sink) {
    if (valorInput.contains('@')) {
      sink.add(valorInput);
    } else {
      sink.addError('Email no valido');
    }
  });
  correoInput.onInput
      .map((dynamic evento) => evento.target.value)
      .transform(validadorCorreo)
      .listen(
        (respuesta) => divErrores.innerHtml = '',
        onError: (error) => divErrores.innerHtml = error,
      );
}
