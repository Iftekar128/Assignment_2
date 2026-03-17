class Camera {
  int _id;
  String _brand;
  String _color;
  double _price;

  Camera(this._id, this._brand, this._color, this._price);

  
  int get id => _id;
  String get brand => _brand;
  String get color => _color;
  double get price => _price;

  set id(int id) {
    _id = id;
  }

  set brand(String brand) {
    _brand = brand;
  }

  set color(String color) {
    _color = color;
  }

  set price(double price) {
    _price = price;
  }
}

void main() {
  Camera c1 = Camera(1, "Canon", "Black", 50000);
  Camera c2 = Camera(2, "Nikon", "Silver", 60000);
  Camera c3 = Camera(3, "Sony", "Gray", 70000);

  print("Camera 1: ${c1.id}, ${c1.brand}, ${c1.color}, ${c1.price}");
  print("Camera 2: ${c2.id}, ${c2.brand}, ${c2.color}, ${c2.price}");
  print("Camera 3: ${c3.id}, ${c3.brand}, ${c3.color}, ${c3.price}");
}