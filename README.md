# Design Patterns Implementation in Dart
##### About The Project : 
A sample command-line application with an entrypoint in `bin/`, library code
in `lib/`. 

[lib](./lib) folder holds all the pattern code. [lib/design_pattern](./lib/design_pattern.dart) is the folder where every proof of concept code is written. [bin/design_pattern](./bin/design_pattern.dart)  is the executing point of the project.


- [Singleton](./lib/singleton_design_pattern.dart) :
Singleton pattern is a pattern in which a class can be only initialized once meaning a class can create only one object. The object will stay at heap. And will be created at starting point.  

- [Factory](./lib/factory_pattern.dart) :
A creational pattern. In which a object is created without exposing the creation logic to the client and refer to newly created object using a common interface.

- [Composite](./lib/composite_pattern.dart) :
A pattern in which we can create a group of objects and treat them similarly. The composite pattern lets us alter code more freely. When we use inheritance, if we have to edit the parent or child classes it can cause problems since they are coupled using inheritance, if we use a Composite we don't have any parent class or child class. Instead, we will make the child class an independent class. 
For example, we made the `Course` an independent class. We are using the `course` class but not coupling it with the student by inheritance. 

- [Prototype](./lib/prototype_pattern.dart) :
This pattern will let any immutable object to clone itself. Or by modifing `copy` method it can also change value of it's clone object. 

### TODO
- [ ] Add `test` to justyfy proof of concept 
- [ ] Add other design patterns.


### Reference : 
- GOF Design Patterns
- [Java-Design-Pattern](https://java-design-patterns.com/patterns/)