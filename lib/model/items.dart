class Item {
  String imgPath;
  double price;
  String location;
  String name;
  Item(
      {required this.imgPath,
      required this.price,
      required this.name,
      this.location = "PCs Store"});
}

List items = [
  Item(name: "Product 1", imgPath: "assets/img/1.jpeg", price: 119.99),
  Item(
      name: "Product 2",
      imgPath: "assets/img/2.jpeg",
      price: 230.99,
      location: "ali express"),
  Item(name: "Product 3", imgPath: "assets/img/3.jpeg", price: 199.99),
  Item(name: "Product 4", imgPath: "assets/img/4.jpeg", price: 129.99),
  Item(
      name: "Product 5",
      imgPath: "assets/img/5.jpeg",
      price: 299.99,
      location: "ali express"),
  Item(name: "Product 6", imgPath: "assets/img/6.jpeg", price: 154.99),
  Item(
      name: "Product 7",
      imgPath: "assets/img/7.jpeg",
      price: 599.99,
      location: "Amazon"),
  Item(
      name: "Product 8",
      imgPath: "assets/img/8.jpeg",
      price: 699.99,
      location: "Amazon"),
];
