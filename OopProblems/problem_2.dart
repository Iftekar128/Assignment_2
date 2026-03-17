class House {
  int? id;
  String? name;
  double? price;

  House({this.id, this.name, this.price});
}

void main() {

  House h1 = House(id: 1, name: "Beauty of Nature", price: 120000);
  House h2 = House(id: 2, name: "Lake Paradice", price: 150000);
  House h3 = House(id: 3, name: "Peace House", price: 100000);


  List<House> houses = [h1, h2, h3];

  for (House house in houses) {
    print("House ID: ${house.id}");
    print("House Name: ${house.name}");
    print("House Price: ${house.price}");
    print("-------------------");
  }
}