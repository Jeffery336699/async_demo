import 'dart:convert';

import 'package:async_demo/async/stream/stream_provider.dart';

void main() {
  // 因为在流停止前，都不能确定未来的元素是否满足条件，所以 lastWhere 的时间线会到流结束。
  Stream<int> intStream = StreamProvider().createStream();
  Future<int> reduceResult = intStream.lastWhere((e) => e == 9, orElse: () => -1);
  int start = DateTime.now().millisecondsSinceEpoch;
  reduceResult.then((value) {
    print("$value === ${DateTime.now().millisecondsSinceEpoch - start} ms");
  });
}
