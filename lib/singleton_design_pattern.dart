//it will have only one object.

///draw backs
///this instance will be in the heap. And wether use it or not the instance will
/// be created.

class Singleton {
  Singleton._init();
  static final Singleton _instance = Singleton._init();

  String demoStr = '';

  factory Singleton() {
    return _instance;
  }
}
