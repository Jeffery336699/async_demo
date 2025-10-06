import 'package:async_demo/async/stream/stream_provider.dart';

void main() {
  Stream<int> intStream = StreamProvider().createStream();
  Stream<int> newStream = intStream.take(3);
  int start = DateTime.now().millisecondsSinceEpoch;
  // Start: 1759721778467
  // 1 ===== 2020 ms
  // 9 ===== 2126 ms
  // 9 ===== 2235 ms
  Future.delayed(const Duration(seconds: 2), () {
    print("Start: $start");
    newStream.listen((e) {
      print("$e ===== ${DateTime.now().millisecondsSinceEpoch - start} ms");
    });
  });

}
