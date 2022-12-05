import 'package:design_pattern/singleton_design_pattern.dart';
import 'package:test/test.dart';

void main() {
  test('Singleton creating only one instance', () {
    //arrange
    Singleton object1 = Singleton();
    Singleton object2 = Singleton();
    //act
    object1.demoStr = "new string";
    //assert
    expect(object2.demoStr, "new string");
  });
}
