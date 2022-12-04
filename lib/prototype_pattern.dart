class Prototype {
  String name;
  String id;
  Prototype(this.name, this.id);
  Prototype clone() => Prototype(name, id);
}
