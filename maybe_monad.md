This code implements the Maybe monad design pattern, a common approach in functional programming to handle optional values without resorting to null references. The Maybe monad encapsulates the presence or absence of a value and is represented by the `Just` and `Nothing` classes.

**Key Components:**
1. **Monad Maybe**: An abstract class serving as the base for `Just` and `Nothing`, providing a method (`fmap`) to apply functions to wrapped values.
2. **Just Class**: Represents a successful computation with a wrapped value.
3. **Nothing Class**: Indicates the absence of a value.
4. **Functor Interface**: An abstraction defining the `fmap` method for applying functions to wrapped values.

**Usage:**
The code showcases the safe application of the `plus3` function to a value wrapped in a `Just` monad, with the result printed only if the computation is successful.

**Pros:**
1. **Null Avoidance**: Eliminates null references, reducing null pointer exceptions.
2. **Clear Handling**: Provides a clear and expressive way to handle the presence or absence of a value.
3. **Composition**: Facilitates easy composition of computations on optional values.

**Cons:**
1. **Boilerplate Code**: May introduce some boilerplate for handling different cases (Just and Nothing).
2. **Learning Curve**: Might be challenging for developers new to functional programming.

In summary, this design pattern adheres to functional programming principles, promoting safer code by addressing the issues associated with null references while introducing a structured approach to optional value handling.


see code : [Maybe Monad](./lib/maybe_monad_pattern.dart)
see implementation [implementation](./lib/design_pattern.dart#L45)