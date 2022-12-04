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
A pattern in which we can create a group of object and treat similarly. 

- [Prototype](./lib/prototype_pattern.dart) :
This pattern will let any immutable object to clone itself. Or by modifing `copy` method it can also change value of it's clone object. 

### TODO
 [ ] Add `test` to justyfy proof of concept 
 [ ] Add other design patterns.