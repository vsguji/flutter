import 'dart:async';

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

// future.dart
// 归属于 async.dart
//  Future<S> then<S>(FutureOf<S> f(T x),...);
// void complete(FutureOr<T> value);
//1. 声明
// abstract class FutureOr<T>{}
//2.体现于对象延迟计算
// Future<int> future = getFuture();
// future.then((value) => handleValue(value))
//       .catchError(error) => handleError(error));

//3.成功、失败两面性，可分别注册回调处理
// Future<int> successor = future.then((int value) {
//   return 42;
// },
// onError:(e){
//   if（canHandle(e)){
//     return 499;
//   }
//   else {
//     throw e;
//   }
// }
// 4.1同步处理原始代码
//  try {
//    int value = foo();
//    return bar(value);
//  }catch (e) {
//    return 499;
//  }
// Future 实现形式,需要触发 computation方法
// factory Future.sync(FutureOr<T> computation()){}

// 4.2异步处理
//  Future<int> future = future(foo);
//  future.then((int value) => bar(value))
//        .catchError(e) => 499);

// 5.Future携带value
// factory Future.value([FutureOr<T>？ value]){}
// 6.Future携带error
// factory Future.error(Object error,[StackTrace? stackTrace]){}
// 7.Future 延迟返回
// factory Future.delayed(Duration duration,[FutureOr<T> computation()?]){}
// 8.future 合并
// static Future<List<T>> wait<T>(Iterable<Future<T>> futures,
//             {bool eagerError = false,void cleanUp(T successVlaue)?}){}

// 9.返回future合并，其中最新成功的一个。
// static Future<T> any<T>(iterable<Future<T>> futures){}
// Completer???

// 10.迭代元素,执行同步或异步事件,任何时间都会停止迭代,并返回。
// Static Future forEach<T>(Iterable<T> elment,FutureOr action(T element)) {}

// 11.执行重复操作
// static Future doWhile(FutureOr<bool> action()) {}

// 12.注册完成回调
  // Future<R> then<R>(FutureOr<R> onValue(T value),{Fuction? onError});

// 13.处理Future发出的处理
  //  Future<T> catchError(Function onError,{bool test(Object error)?});

  // 14.串行完成
  // Future<T> whenComplete(FutureOr<void> action());
  // 等同于下面逻辑:
  // Future<T> whenComplete(action()) {
  //   return this.then((v){
  //     var f2 = action();
  //     if (f2 is Future) then f2.then((_) => v);
  //   },onError:(e) {
  //     var f2 = action();
  //     if (f2 is Future) return f2.then((_) { throw e;});
  //     throw e;
  //   });
  // }
  // 15.转化为串行流
  // Stream<T> asStream();

  // 16.时间超时
  // Future<T> timeOut(Duration timeLimit, {FutureOr<T> onTimeout()?});

  // Stream.dart
  // abstract class Stream<T> {}
  // 提供两种形式
  // 1.single stream 单流 串行
  // 2.BoardCast  广播流 需要订阅者

  // 1.空流
  // const factory Stream.empty() => _EmptyStream<T>;

  // 2.发出一个单项流
  // factory Stream.value(T value) => (_AsyncStreamController<T>(null,null,null,null))
  //                                      .._add(value)
  //                                      .._closeUnchecked())
  //                                      .stream;

  // 3.完成之前,发出一个个单向错误
  // factory Stream.error(Object error,[StackTrace? stackTrace]){}

  // 4.由future创建单向流
  // factory Stream.fromFuture(Future<T> future){}

  // 5.创建有一组future创建的流
  // factory Stream.fromFutures(Iterable<Future<T>> futures) {}

  // 6.由迭代元素创建的单向流

  // Zone.dart 类似 [perform:selector] 、object_hook_servable()
  // _ZoneFunction == 区域函数
  // _RunNullaryZoneFunction == 运行无参函数
  // _RunUnaryZoneFunction == 运行一元参数函数
  // _RunBinaryZoneFunction == 运行二元参数函数
  // _RegisterNullaryFunction == 注册无参函数
  // _RegisterUnaryZoneFunction == 注册一元参数函数
  // _RegisterBinaryZoneFunction == 注册二元参数函数

  // Zone 类型

  // 1.Main ,默认 Zone.root

  //  2. 创建Zone:runZoned、runZonedGuared

  //  3. 在存在Zone:Zone.run、Zone.fork(分叉)

}
