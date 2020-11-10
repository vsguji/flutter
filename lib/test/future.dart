Future<void> fetchUserOrder () {

return Future.delayed(Duration(seconds:2)),() => throw Exception("logout failed:user ID is invalid"));
}

Future<String>fetchUserOder() => 
Future.delayed(Duration(seconds:2),()=>"large latte"));

String createOrderMessage() {
  var order = fetchUserOrder();
return "You order is $order";
}

// async and await 使用？
// 1.to define an async function,add async before the function body
// 2.the await keyword works only in async function 

void main() async {}

Future<T> main() async {

}

print(await main());

// 同步方法案例

String createOrderMessage() {
  var order = fetchUserOrder2();
  return "You order is $order";
}

Future<Strign> fetchUserOrder2() =>
Future.delayed(Duration(seconds:2),()=>"Large latte");

void main() {
  print("fetching user ordering");
  print( createOrderMessage());
}

// 异步方式案例

String createOrderMessage2() async {
 var order = await fetchUserOrder3();
 return "Your order is $order";
}

Future<String> fetchUserOrder3() => Future.delayed(Duration(seconds:2),()=>"large latte"));

Future<void> main() async {
  print("Fetching user order...");
  print(await createOrderMessage2());
}

// 案例2

Future<void> printOrderMessage async {
  print("Awaiting user order...");
  var order = fetchUserOrder4();
  return "Your order is $order";
}

Future<String> fetchUserOrder4() {
  return Future.delayed(Duration(seconds:2),()=>"large latte"));
}

Future<void> main() async {
 countSeconds(4);
 await printOrderMessage();
}

void countSeconds(int s) {
  for (var i = 1; i <=s ; i++){
    Future.delayed(seconds:i),() =>print(i));
  }
}

// 处理async function错误,用try-catch捕获

try {
  var order = await fetchUserOrder();
  print("Awaiting user order...");
}catch (e){
  print("Caught error $e");
}


// 完整捕获错误案例

Future<void> printOrderMessage async {
  try {
    var order = fetchUserOrder5()
    print("Awaiting userOrder...");
  }catch (err){
    print("Caught error:$err");
  }
}

Future<String> fetchUserOrder5() {
  var str = Future.delayed(Duration(seconds:4),()=>"Cannot locate user order"));
}

Future<void> main() async {
  await printOrderMessge();
}


// 相同对象操作,链式方法操作

var button = querySelector("#confirm");
button.text = "Confirm";
button.classes.add("important");
button.onClick.listen((e) => window.alert("Confirmed!"));

// 简化后
querySelector("#confirm")
..text = "Confirm"
..classes.add("important")
..onClick.listen((e) => window.alert("confirmed!"));


int sumUpToFive(int a,[int b,int c,int d,int e]) {
  int sum = a;
  if (b != null) sum += b;
  if (c != null) sum += c;
  if (d != null) sum += d;
  if (e != null) sum += e;
  return sum;
}

// 可选参数

void printName(String firstName,String lastName,{String suffix}) {
  print("$firname $lastname ${subffix ?? ""}");
}

printName("Avinash","Gupta");
printName("Poshmeister","Moneybuckets",suffix:"IV");

// 更改默认 null

void printName(String firstName,String lastName,{String suffix = ""} {
  print("$firstName $lastName $suffix");
})

// 异常
throw Exception("Something bad happend");
throw "Waaaaaa";

// try \ on \ catch 
try {

} on OutOfLIamasException {
  // user the on keyword to filter for specific exceptions by type
  // on 用于过滤特殊异常处理

} on Exception catch (e) {

} catch (e) {

}

// 有没有抛出异常,添加都可执行代码 finally

try {

}catch e {

}finally {

}

// 构造函数 内部参数 初始化

Point.fromJSON(Map<String,num> json):x = json["x"],y=json["y"] {
  print("In Point.fromjson():($x,$y)");
}

// 工厂模式

class Square extends Shap{}

class Circle extends Shape{}

class Shape {
  Shape();

  factory Shape.fromTypeName(Stirng typeName) {
    if (typeName == "square") return Square();
    if (typeName == "circle") return Circle();
    print("I don't recoginze $typeName");
    retun null; // 工厂模式允许返回空;
  }
}

// 重定向构造函数
// 构造函数的唯一目的是重定向都同一类中的另一个构造函数。
// 重定向构造函数的主体为空,构造函数调用出现在冒号：之后
// 例子

class Automobile {
  Automobile(this.make,this.model,this.mpg);

  Automobile.fancyHybrid():this.hybrid("futureCar","Mark 2");

  Automobile.hybrid(String make,String model): this(make,model,60);

  String make;
  String model;
  int mpg;
}

// 常量构造函数

class ImmutablePoint {
  const ImmutablePoint(this.x,this.y);

  static const ImmutablePoint origin = ImmutablePoint(0,0);

  final int x;
  final int y;
}


// 不可为空、可为空
// 
class SomeClass {
  SomeClass(this.initialzingFormal):initialzationList = 0; // 构造函数的初始化列表

  int aDeclaration = 0;
  int initialzingFormal;

  int initialzationList;

 // 换句话说,字段在到达构造函数主题之前具有值。



}


// 类型Never
Never wrongType(String type,Object value) {
  throw ArgumentError("Exception $type,but was")
}

// late 
// 延迟初始化


class Weather {
  // late int _temperature = _readThermometer();
   String t = "";


}

// late final 
// 延迟初始化,并且分配一次
class Coffee {
// late 不在提示,版本更新问题
 String _temperature = "";

  void heart() {_temperature = "hot";}

  void chill() {_temperature = "iced";}

  String serve() => _temperature + "Coffee";
}

// required  参数必要性传递，与null安全性无关;

// function(int a,required int? b,int? c,{required int? d}){}

 
// 可控性+泛型
class Box<T> {
  Box(this.object);

  final T object;
}

main() {
  Box<String>("a string");
  Box<int?>(null);
}




// 总结

// 带走的核心点是：

// 类型默认是不可为空的，并通过添加使其可为空?。

// 可选参数必须可以为空或具有默认值。您可以使用 required使命名参数为非可选。不可为空的顶级变量和静态字段必须具有初始化程序。必须在构造函数主体开始之前初始化不可为空的实例字段。

// 如果接收者为null，则在知道空值的运算符短路后，方法链会链接 null。有新的可识别null的级联（?..）和索引（?[]）运算符。后缀为null的断言“ bang”运算符（!）将其可为空的操作数转换为基础的不可为空的类型。

// 流分析使您可以安全地将可为空的局部变量和参数转换为可用的不可为空的变量。新的流分析还具有用于类型升级，返回缺失，代码无法访问和变量初始化的更智能规则。

// 该late修改器可以使用非可空类型，并final在地方，否则你可能无法在运行时检查的费用。它还为您提供了延迟初始化的字段。

// 该List类别改变，以防止未初始化的元素。

