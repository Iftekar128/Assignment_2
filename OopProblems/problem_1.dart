class Laptop {
  int? id;
  String? name;
  int ram;

  Laptop({ this.id, this.name, required this.ram});
}

void main() {

   Laptop l1 = Laptop(id: 2, name: "Macbook air M4 ", ram: 32);
   Laptop l2 = Laptop(id: 1, name: "HP Pavilion 15", ram: 16);
   Laptop l3 = Laptop(id: 3, name: "Asus Vivobook", ram: 8);

  print("Laptop 1: ${l1.id}, ${l1.name}, ${l1.ram}GB");
  print("Laptop 2: ${l2.id}, ${l2.name}, ${l2.ram}GB");
  print("Laptop 3: ${l3.id}, ${l3.name}, ${l3.ram}GB");
}