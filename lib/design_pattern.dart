import 'package:design_pattern/composite_pattern.dart' as composite;
import 'package:design_pattern/factory_pattern.dart' as factory_pattern;
import 'package:design_pattern/maybe_monad_pattern.dart' as monad_maybe;
import 'package:design_pattern/prototype_pattern.dart' as prototype;
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

prototypeProofOfConcept() {
  prototype.Prototype object = prototype.Prototype("tamim", "1930");
  prototype.Prototype cloneOfObject = object.clone();

  print("properties of object : ");
  print("name : ${object.name}, id : ${object.id}");
  print("cloneOfObject which is a clone of 'object' : ");
  print("name : ${cloneOfObject.name}, id : ${cloneOfObject.id}");
}

void maybeMonadProofOfConcept() {
  num plus3(num x) => x + 3;

  final result = monad_maybe.Just(2).fmap((p0) => plus3(p0));
  if (result is monad_maybe.Just) {
    print((result as monad_maybe.Just).value);
  }
}
