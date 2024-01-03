class Product {
  final String name;
  final String image;
  final int amount;
  final double price;
  final String? description;
  final String? expandedImage;

  Product({
    required this.name,
    required this.image,
    required this.amount,
    required this.price,
    this.description,
    this.expandedImage,
  });



  //getter method to acces the method from outside the class

  String get _name => name;
  String get _image => image;
  int get _amount => amount;
  double get _price => price;
  String? get _description => description;
  String? get _expandedImage => expandedImage;
}
