
int meaningOfLine = 42;
double valueOfPi = 3.141592;
bool visible = true;

String shakespeareQuote = "All the world's a stage,...";

String philosophy = "Live on";
String get palindrome => philosophy + philosophy.split("").reversed.join();

var numbers = new RegExp(r'\d+');

// Colletions
class Test {
  List superheroes = ['Batman', 'Superman', 'Harry Potter'];

  void build() {
    StringBuffer moreShakespeare1 = new StringBuffer();
    moreShakespeare1.write("And all the men and women");
    moreShakespeare1.write("merely players;...");

    Set villains = Set();
    villains.add("Joker");
    villains.addAll(['Lex Luther', 'Voldemort']);

    Map sideKicks = {
      "Bataman": "Robin",
      "Superman": "Lois Lane",
      "Harry Potter": "Ron and Hermione"
    };

    // Date and time
    DateTime now = DateTime.now();
    DateTime berlinWallFell = new DateTime(1989, 10, 1);
    DateTime moonLanding = DateTime.parse('1969-07-20');

    // Duration
    Duration timeRemaining = new Duration(hours: 56, minutes: 14);
    // URI
    Uri dartlang = Uri.parse('http://dartlang.org/');
    // Error --
    // the error class represents the occurrence of an error
    // during runtime.Subclasses of this classs represent
    // specific kinds of errors;
    Error error = Error();
    RangeError rangeError = RangeError("");
    TypeError typeError = TypeError();
    // NoSuchMethodError methodError = NoSuchMethodError.withInvocation("receiver", "invocation");
    AssertionError assertionError = AssertionError();
    AssertionError assertionError1 = AssertionError("warning");
    assertionError1.toString();
    ArgumentError argumentError = ArgumentError();
    ArgumentError argumenterror1 = ArgumentError("argument error");
    argumenterror1.toString();
    IndexError indexError = IndexError(0, "");
    FallThroughError fallThroughError = FallThroughError();
    AbstractClassInstantiationError abstractClassInstantiationError =
        AbstractClassInstantiationError("className");
    UnimplementedError unimplementedError = UnimplementedError("error message");
    UnsupportedError unsupportedError = UnsupportedError("error message");
    // Concurrent 并发修改错误
    ConcurrentModificationError error = ConcurrentModificationError("object");

    OutOfMemoryError memoryError = OutOfMemoryError();

    // 堆栈溢出错误
    StackOverflowError stackOverflowError = StackOverflowError();

    CyclicInitializationError cyclicInitializationError =
        CyclicInitializationError();

    LateInitializationError lateInitializationError =
        LateInitializationError("late error");

    StateError stateError = StateError("State");

    // @pragma 运用 tools
    // 有哪些工具

    // 类型
    // Bidirectionalterator
    //
    // BidirectionalIterator<Object> object = BidirectionalIterator<Object>();
    List items = ["1", "2", "3", "4"];
    while (items.iterator.moveNext()) {
      String item = items.iterator.current;
      items.add(item + "001");
    }
    print(items);

    // BigInt
    BigInt a = BigInt.from(10);
    BigInt b = BigInt.from(20);
    BigInt c = a + b;
    a % b;
    // bool
    const bool t = bool.fromEnvironment("logging");
    // comparable
    (0.0).compareTo(-0.0);
    0.0 == -0.0;
    var dt = DateTime.now();
    var dt2 = dt.toUtc();
    dt == dt2;
    dt.compareTo(dt);
    // core
    // 核心处理,导入其他类.dart文件
    // framework header.h
    // 支持dart库类型,
    // library dart.core;
    // import "dart:collection"
    // import "dart:_internal" hide Symbol,LinkedList,LinkedListEntry;
    // import "dart:typed_data" show Uint8List;
    // @Since("2.1")
    // export "dart:async" show Future,Stream;
    // part "annotations.dart";
    // part of dart.core;
    // date_time
    var now2 = DateTime.now();
    var berlinaWallFell = DateTime.utc(1989, 11, 9);
    var moonLanding2 = DateTime.parse("1969-07-20 20:18:042Z");
    assert(moonLanding2.hour == 20);
    assert(berlinaWallFell.isBefore(moonLanding2) == true);:q
    // doule
     var d1 = 0.0;
     d1.abs();
     d1.floor();
     d1.round(); // 4️舍五入
     d1.ceil();  // 保留整数
     d1.toInt();
     d1.toString();
    // duration
     var fastestMarathon = Duration(hours: 2,minutes:3,seconds: 2);
     assert(fastestMarathon.inMinutes == 123);
     var aLongWeekend = Duration(hours:88);
     assert(aLongWeekend.inDays == 3);
    // errors
       // 不同情况错误
    // exception
      // 抛出来自VM、或者来自Dart异常
    // expando
    // 对象增加属性

    // function
       // bool operator == (Object other);
       // static apply(Function function,Lit<dynamic>? positionalArguments,[Map<Symbol,dynamic>? namedArguments])

    // identical
        // 检查两个相关对象是否一致
      //  external bool identical(Object? a, Object？ b);
      // external int identityHashCode(Object? object);

    // int
     // 64-bit
     // 注javascript

    // invocation
    // 调用
    // factory 
    // Symbol

    // iterable

    // iterator

    // list
       // 有序集合
       // 1.
        var fixedLengthList = List(3);
        fixedLengthList.length;
        fixedLengthList.length = 1; // error
      // 2.
        var growablelist = [];
        growablelist.length;
        growablelist.length = 3;
      // 3.
         List growableList = []..length = 500;
      // 4.
      // external factory List.filled(int length,E fill,{bool growable = false})
         // growable 可生长的
         List<int> growableList2 = List<int>.filled(500, 0,growable: true);

        var shared = List.filled(3,[]);
        shared[0].add(499);
       print(shared);
      // 5.
        // 指定位置生成新对象
       var unique = List.generate(3, (index) => []);
       unique[0].add(499);
       print(unique);
      // 6.创建不可修改列表
      // external factory List.unmodifiable(Iterable elements);
      // 7.转换源输出指定类型
      // static List<T> castFrom<S,T>(List<S> source) => CaseList<S,T>(source);
      // 8.截取范围列表到指定列表
      // static void copyRange<T>(List<TT> target,int at,List<T> source,[int? start,int? end])
      // 9.迭代元素添加到指定列表
      // static void writeIterable<T>(List<T> target,int at,Iterable<T> source) 
      // 10.添加元素一般采用add\addAll,
      // 对于已明确全部类型,且类型一致可以采用如下方法,否则抛出异常。
      // List<R> cast<R>();
      // 11.添加任意元素到列表
      // void add (E value);
      // 12.后面追加迭代元素
      // void add (Iterable<E> iterable);
      // 13.反转
      // Iterable<E> get reversed;
      // 14.排序、条件排序
      //  List<int> nums = [13,2,-11];
      // nums.sort();
      // List<String> numbers = ['two','three','four'];
      // numbers.sort((a,b) => a.length.compareTo(b.length))
      // 15.随机打乱顺序的列表
      // void shuffle([Random? random]);
      // 16.获取元素,在列表位置
      // int indexOf(E element,[int start = 0]);
      // 17.返回符合条件的首个元素
      //  int indexWhere((note) => note.startsWith("k"))
      // 18.返回符合列表的末尾元素
      // int lastIndexWhere(bool test(E element),[int? start]);
      // 19.返回符合条件的末尾位置
      // int lastIndexOf(E elment,[int？ start]);
      // 20.清空列表
      // clear()
      // 21.指定位置,插入元素
      // void insert(int index,E element);
      // 22.指定位置,插入迭代元素集
      // void insertAll(int index,Iterable<E> iterable)
      // 23.从指定元素,插入列表,同时覆盖原列表后面内容
      // void setAll(int index,Iterable<E> iterable);
      // 24.移除指定元素
      // bool remove(Object? value);
      // 25.指定为值移除元素
      // E removeAt(int index);
      // 26.删除最后元素
      // E removeLast();
      // 27.指定条件,移除元素
      // void removeWhere(bool test(E element));
      // 28.删除不满足条件的元素
      // void retainWhere(bool test(E element));
      // 29.符号结合
      // List<E> operator +(List<E> other);
      // 30.获取区间集合
      // List<E> sublist(int start,[int? end]);

    // map

        // HashMap
        // LinkedHashMap
        // SplayTreeMap
      // 1.
      // 2.
      // 3.
      // 4.

    // null


    // num


    // object
        // 1.创建实例
        // const Object();
        // 2.一致性比较
        // external bool operator == (Object other);
        // 3

        // 获取对象运行类型
        // external Type get runtimeType;

    // pattern


    // print


    // regexp


    // set


    // slink


    // stacktrace


    // stopwatch


    // string


    // string_buffer


    // string_sink


    // symbol


    // type


    // uri
  }
}

class TestAbstractItetor extends BidirectionalIterator {
  @override
  // TODO: implement current
  get current => throw UnimplementedError();

  @override
  bool moveNext() {
    // TODO: implement moveNext
    throw UnimplementedError();
  }

  @override
  bool movePrevious() {
    // TODO: implement movePrevious
    throw UnimplementedError();
  }
}
