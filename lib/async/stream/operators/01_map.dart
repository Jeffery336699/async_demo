import 'package:async_demo/async/stream/stream_provider.dart';

Map<int,String> numMap = {
  0:"零", 1:"壹", 2:"贰", 3:"叁", 4:"肆",
  5:"伍", 6:"陆", 7:"柒", 8:"捌", 9:"玖", 10:"拾",
};

void main(){
  Stream<int> intStream = StreamProvider().createStream();
  Stream<String> newStream = intStream.map<String>((int e) {
    return numMap[e]!;
  });
  var subscription = newStream.listen((e) {
    print(e);
  });
  ///(subscription as _EventSink)底层就是可以sink.add发送数据的对象
  print('subscription = $subscription');

}

