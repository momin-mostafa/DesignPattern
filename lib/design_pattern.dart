import 'package:design_pattern/composite_pattern.dart' as composite;
import 'package:design_pattern/factory_pattern.dart' as factory_pattern;
import 'package:design_pattern/singleton_design_pattern.dart' as singleton;

singletonProofOfConcept() {
  singleton.Singleton obj = singleton.Singleton();
  singleton.Singleton obj2 = singleton.Singleton();

  obj.demoStr = "hello from singleton";
  print(obj2.demoStr);
}

compositePatternProofOfConcept() {
  composite.CompositePattern compositePattern = composite.CompositePattern();
  compositePattern.student.printInfo();
  compositePattern.addAllCourse();
  compositePattern.student.printInfo();
}

factoryPatternProofOfConcept() {
  factory_pattern.Person aStudent =
      factory_pattern.Person(factory_pattern.PersonType.student);
  factory_pattern.Person aEmployee =
      factory_pattern.Person(factory_pattern.PersonType.employee);
  factory_pattern.Person aTeacher =
      factory_pattern.Person(factory_pattern.PersonType.teacher);

  aStudent.speak();
  aEmployee.speak();
  aTeacher.speak();
}
