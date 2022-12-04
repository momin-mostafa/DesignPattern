class Prototype {
  final String name;
  final String id;
  Prototype(this.name, this.id);
  Prototype clone() => Prototype(name, id);
}
