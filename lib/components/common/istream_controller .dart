import 'dart:async';

class IStreamController<T> {
  StreamController<T> _controller = StreamController<T>.broadcast();
  Stream<T> get stream {
    if (_controller.isClosed) _controller = StreamController<T>();
    return _controller.stream;
  }

  bool get isClosed {
    return _controller.isClosed;
  }

  void add(T data) {
    if (_controller != null && _controller.isClosed != true) {
      _controller.add(data);
    }
  }

  void close() {
    _controller?.close();
  }
}
