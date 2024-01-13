// class Maybe {
//   var value;
//   Maybe(this.value);

//   Maybe bind(Function function) {
//     if (value == null) {
//       return Maybe(null);
//     } else {
//       return Maybe(() => function(value));
//     }
//   }

//   Maybe orElse(dynamic defaultValue) {
//     if (value == null) {
//       return Maybe(defaultValue);
//     } else {
//       return this;
//     }
//   }

//   dynamic unWrap() {
//     return value;
//   }

//   bool isSame(dynamic otherClass) {
//     if (otherClass is Maybe) {
//       return value == otherClass.value;
//     } else {
//       return false;
//     }
//   }
// }

// Maybe multiplyBy(double value, Maybe maybe) {
//   if (maybe.value == null) return Maybe(0);
//   return Maybe(maybe.value * 2);
// }

abstract class Maybe<T> implements Functor<T> {}

class Just<T> extends Maybe<T> {
  Just(this.value);
  @override
  Maybe<U> fmap<U>(U Function(T) f) => Just(f(value));
  final T value;
}

class Nothing<T> extends Maybe<T> {
  @override
  Maybe<U> fmap<U>(U Function(T) f) => Nothing();
}

abstract class Functor<T> {
  Functor<U> fmap<U>(U Function(T) f);
}
