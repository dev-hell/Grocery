class Product {
  final String name;
  final String price;
  final String quantity;
  final String image;
  final String description;

  Product(
      this.name,
      this.price,
      this.quantity,
      this.image,
      this.description,
      );
}

final List<Product> allData = [
  Product(
    'Avacado',
    '200',
    '1 (kg)',
    'assets/avakado.jpg',
    'Fresh and clean ',
  ),
  Product(
    'Banana',
    '400',
    '1kg',
    'assets/b1.webp',
    'Fresh and clean ',
  ),
  Product(
    'Ladies Finger',
    '950',
    '1 (kg)',
    'assets/l2.jpg',
    'Fresh and clean',
  ),
  Product(
    'Orange',
    '450',
    '1kg',
    'assets/o1.webp',
    'Fresh and clean',
  ),
  Product(
    'Staberry',
    '350',
    '1kg',
    'assets/s1.webp',
    'Fresh and clean',
  ),
  Product(
    'Tomato',
    '450',
    '1kg',
    'assets/t1.webp',
    'Fresh and Clean',
  ),
];