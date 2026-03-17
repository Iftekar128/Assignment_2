class Animal {
  int? id;
  String? name;
  String? color;

  Animal(this.id, this.name, this.color);
}

class Cat extends Animal {
  String? sound;

  Cat(int id, String name, String color, String sound) : super(id, name, color) {
    this.sound = sound;
  }
}

void main() {
  Cat c1 = Cat(1, "Snow", "White", "Meow");

  print("ID: ${c1.id}");
  print("Name: ${c1.name}");
  print("Color: ${c1.color}");
  print("Sound: ${c1.sound}");
}