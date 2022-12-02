class Course {
  Course({
    required String name,
    required int courseCode,
    required String dept,
  }) {
    _courseCode = courseCode;
    _dept = dept.toUpperCase();
    _name = name;
  }

  int _courseCode = 0;
  String _dept = '';
  String _name = '';

  String get course {
    return "$_dept - $_courseCode : $_name";
  }

  int get courseCode {
    return _courseCode;
  }

  String get dept {
    return _dept;
  }
}

class Student {
  final String name, id, dept;
  int waiver = 0;
  List<Course> courseList = [];
  Student({
    required this.name,
    required this.id,
    required this.dept,
  });

  void add(Course course) {
    courseList.add(course);
  }

  void printInfo() {
    print("Name : $name");
    print("Id : $id");
    print('Dept : $dept');
    for (var element in courseList) {
      print(element.course);
    }
  }
}

class CompositePattern {
  Course a = Course(name: 'course a', courseCode: 1111, dept: "cse");
  Course b = Course(name: 'course b', courseCode: 1112, dept: "cse");
  Course c = Course(name: 'course c', courseCode: 1113, dept: "cse");

  Student student = Student(name: 'Tamim', id: '101', dept: 'CSIT');

  void addAllCourse() {
    student.add(a);
    student.add(b);
    student.add(c);
  }
}
