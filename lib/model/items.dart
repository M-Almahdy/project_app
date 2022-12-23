class Item {
  String imgPath;
  double price;
  String location;
  Item(
      {required this.imgPath,
      required this.price,
      this.location = "any Electronic Store"});
}

List items = [
  Item(imgPath: "assets/img/1.jpeg", price: 119.99),
  Item(imgPath: "assets/img/2.jpeg", price: 230.99, location: "ali express"),
  Item(imgPath: "assets/img/3.jpeg", price: 199.99),
  Item(imgPath: "assets/img/4.jpeg", price: 129.99),
  Item(imgPath: "assets/img/5.jpeg", price: 299.99, location: "ali express"),
  Item(imgPath: "assets/img/6.jpeg", price: 154.99),
  Item(imgPath: "assets/img/7.jpeg", price: 599.99, location: "Amazon"),
  Item(imgPath: "assets/img/8.jpeg", price: 699.99, location: "Amazon"),
];
