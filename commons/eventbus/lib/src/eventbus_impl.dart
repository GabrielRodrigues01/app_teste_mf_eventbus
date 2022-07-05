import 'dart:async';

class Eventbus {
  Eventbus._internal();
  static final Eventbus _singleton = Eventbus._internal();
  factory Eventbus() => _singleton;

  final _bus = StreamController.broadcast();

  static emit(payload) {
    _singleton._bus.sink.add(payload);
  }

  static get listen => _singleton._bus.stream.listen;
}
