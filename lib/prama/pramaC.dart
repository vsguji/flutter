import './pramaA.dart';
import './pramaB.dart';

class PramaC extends PramaA implements PramaB {
  final dynamic name;
  void method() {
    // 调用不明确
    @pragma("PramaA:test")
    test(this.name):name = null;
  }
}
