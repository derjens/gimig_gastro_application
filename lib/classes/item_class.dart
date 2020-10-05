class Item {
  Item({
    this.image,
    this.name,
    this.price,
    this.description,
    this.amount = 1,
    this.ordered = false,
  });

  final String image;
  final String name;
  final String price;
  final String description;
  int amount;
  bool ordered;
}
