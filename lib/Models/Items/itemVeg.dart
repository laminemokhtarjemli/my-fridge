// ignore_for_file: file_names

class ItemVeg {
  int id;
  String name;
  String description;
  String image;
  double rating;
  int ratingCount;
  double price;
  int color;
  List<String> vitamins;
  String ingrediants;

  ItemVeg({
    required this.id,
    required this.name,
    required this.description,
    required this.image,
    required this.rating,
    required this.ratingCount,
    required this.price,
    required this.color,
    required this.vitamins,
    required this.ingrediants,
  });
}

List<ItemVeg> demoItemsVeg = [
  ItemVeg(
    id: 1,
    name: 'Milk',
    description: "Cal:42, Prot:3,4 g",
    image: 'assets/images/1.png',
    rating: 4.5,
    ratingCount: 565,
    price: 3,
    color: 0x929292,
    vitamins: [
      'vitamin A',
      'vitamin C',
      'vitamin K',
      'Magnésium	11 mg	',
      'Vitamine B₁₂	0,5 µg'
    ],
    ingrediants: 'assets/icons/ingredient1.svg',
  ),
];
