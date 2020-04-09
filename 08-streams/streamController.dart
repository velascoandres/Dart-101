import 'dart:async';

void main(List<String> args) {
  final orden = new Orden('sandwich');
  final manejadorInformacion =
      StreamTransformer.fromHandlers(handleData: (tipoComida, sink) {
    if (tipoComida == 'pizza') {
      sink.add(new Comida());
    } else {
      sink.addError('No tenemos ese producto');
    }
  });
  final controladorStream = StreamController();
  // Arrogamos datos al stream
  controladorStream.sink.add(orden);
  controladorStream.sink.add(new Orden('pizza'));
  // Acceder al stream para obtener la orden
  controladorStream.stream
      .map((orden) => orden.tipo) // recuperamos el tipo de comida --> recibimos lar ordenes y solo obtenemos el tipo
      .transform(manejadorInformacion) // adjuntamos cual es el controlador de informacion
      .listen( // Para manejar el resultado que viene desde el stream
        (pizza) => print('pedido realizado de $pizza'),
        onError: (error) => print(error)
      ); // 
}

class Orden {
  String tipo;
  Orden(this.tipo);
}

class Comida {}
