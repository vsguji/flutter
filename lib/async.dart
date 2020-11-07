class Async {

//  const timeout = const Duration(seconds:3);
//  const ms = const Duration(millseconds:1);

//  startTimeOut([int milliseconds]) {
//    var duration = milliseconds == null ? timeout : ms * milliseconds;
//    return Timer(duration,handleTimeOut);
//  }

//  void handleTimeOut() {

//  }

// abstract class Timer {}
// 1. 创建时间:持续时长,回调
// factory Timer(Duration duration ,void Function() callBack) {}
// 2. 创建循环时间
// factory Timer.periodic(Duration duration,void callback(Timer timer)) {}
// 3. 异步执行run 操作
// static void run(void Function() callback) {
//   new Timer(Duration.zero,callback);
// }
// 4.取消时间
  //  void cancel()
// 5.获取打点计数
//  int get tick;
// 6.计时器是否活跃
// bool get isActive;

// Zone.dart
// 

// async.dart
// 引入 import "dart:async";
// Future 
// 1.返回一个有用或无用的对象
// 2.返回计算结果
// 3.当将来某个时刻返回
// 4.通常用于长时间计算场景,比如I/O，用户交互

// HttpServer.bind("127.0.0.1",444)
//         .then((server) => print("$server.isBrodcast"))
//         .catchError(input)
// bind 、 then \ catchError

// Stream 
// 1.提供异步队列数据
// Stream<List<int>> stream = File("quotes.txt").openRead();
// stream.transform(utf8.decoder).listen(print);
// utf8.decoder 位于 "dart:convert" 库中,常常涉及编码转换
// 2.web app 事件队列比如鼠标点击
// querySelector("#myButton").onClick.listen((_) => print("click."));


}
