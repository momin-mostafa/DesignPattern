import 'package:design_pattern/factory_pattern.dart';
import 'package:test/test.dart';

void main() {
  test('factory pattern ', () {
    //arrange
    Person aStudent = Person(PersonType.student);
    Person aEmployee = Person(PersonType.employee);
    Person aTeacher = Person(PersonType.teacher);

    //assert
    expect(aStudent.speak(), "Hello from student");
    expect(aEmployee.speak(), "Hello from Employee");
    expect(aTeacher.speak(), "Hello from teacher");
  });
}
