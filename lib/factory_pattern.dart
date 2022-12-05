enum PersonType {
  student,
  teacher,
  employee,
  admin,
}

abstract class Person {
  factory Person(PersonType personType) {
    switch (personType) {
      case PersonType.admin:
        return Admin();
      case PersonType.teacher:
        return Teacher();
      case PersonType.employee:
        return Employee();
      case PersonType.student:
        return Student();
      default:
        throw "Undefined Person Type";
    }
  }
  String speak();
}

class Student implements Person {
  @override
  String speak() {
    print("Hello from student");
    return "Hello from student";
  }
}

class Teacher implements Person {
  @override
  String speak() {
    print("Hello from teacher");
    return "Hello from teacher";
  }
}

class Employee implements Person {
  @override
  String speak() {
    print("Hello from Employee");
    return "Hello from Employee";
  }
}

class Admin implements Person {
  @override
  String speak() {
    print("This is ADMIN");
    return "This is ADMIN";
  }
}
