// ignore_for_file: file_names

class Item {
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

  Item({
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

List<Item> demoItems = [
  Item(
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
  Item(
    id: 2,
    name: 'Eggs',
    description:
        "This Fruit Soup may use jelly which is diced as well to add flavor and crowd to the Fruit Soup. I didn't have time to make the jelly, so I didn't use it",
    image: 'assets/images/2.png',
    rating: 4.5,
    ratingCount: 465,
    price: 2,
    color: 0x929292,
    vitamins: ['vitamin A', 'vitamin C', 'vitamin K'],
    ingrediants: "assets/icons/ingredient1.svg",
  ),
  Item(
    id: 3,
    name: 'Meat',
    description:
        "Calories 143 , Lipides 3,5 g	 , Cholestérol 73 mg	 , Sodium 57 mg	 , Potassium 421 mg	 , Protéines 26 g	, Magnésium	29 mg	",
    image: 'assets/images/3.png',
    rating: 4.5,
    ratingCount: 365,
    price: 15,
    color: 0x929292,
    vitamins: [
      'vitamin B',
      'vitamin D',
    ],
    ingrediants: 'Crepes',
  ),
  Item(
    id: 4,
    name: 'Yogurt',
    description:
        "Calories 59 , Lipides 0,4 g	 , Cholestérol 5 mg , Sodium 36 mg	 , Potassium 141 mg	 , Glucides 3,6 g	 , Protéines 10 g	, Magnésium	11 mg	",
    image: 'assets/images/4.png',
    rating: 4.5,
    ratingCount: 165,
    price: 6.5,
    color: 0x929292,
    vitamins: [
      'vitamin B',
      'vitamin C',
    ],
    ingrediants: 'assets/icons/ingredient1.svg',
  ),
  Item(
    id: 5,
    name: 'Water',
    description:
        "This Fruit Soup may use jelly which is diced as well to add flavor and crowd to the Fruit Soup. I didn't have time to make the jelly, so I didn't use it",
    image: 'assets/images/5.png',
    rating: 4.5,
    ratingCount: 165,
    price: 6.5,
    color: 0x929292,
    vitamins: ['vitamin A', 'vitamin C', 'vitamin K'],
    ingrediants: 'assets/icons/ingredient1.svg',
  ),
  Item(
    id: 6,
    name: 'Butter',
    description:
        "Calories 717 , Lipides 81 g	 , Cholestérol 215 mg	 , Sodium 11 mg	 , Potassium 24 mg	, Glucides 0,1 g	, Protéines 0,9 g , Magnésium	2 mg	",
    image: 'assets/images/6.png',
    rating: 4.5,
    ratingCount: 165,
    price: 6.5,
    color: 0x929292,
    vitamins: [
      'vitamin B',
      'vitamin D',
    ],
    ingrediants: 'assets/icons/ingredient1.svg',
  ),
  Item(
    id: 7,
    name: 'Sea Food',
    description:
        "This Fruit Soup may use jelly which is diced as well to add flavor and crowd to the Fruit Soup. I didn't have time to make the jelly, so I didn't use it",
    image: 'assets/images/7.png',
    rating: 4.5,
    ratingCount: 165,
    price: 6.5,
    color: 0x929292,
    vitamins: ['vitamin A', 'vitamin C', 'vitamin K'],
    ingrediants: 'assets/icons/ingredient1.svg',
  ),
  Item(
    id: 8,
    name: 'Tomatoes',
    description: 'Calories 18 , Lipides 0,2 g ,',
    image: 'assets/images/8.png',
    rating: 4.5,
    ratingCount: 165,
    price: 6.5,
    color: 0x929292,
    vitamins: ['vitamin B', 'vitamin C', 'vitamin D'],
    ingrediants: 'assets/icons/ingredient1.svg',
  ),
  Item(
    id: 9,
    name: 'Chili',
    description:
        "Calories 40 , Lipides 0,4 g , Potassium 322 mg, Magnésium	23 mg	",
    image: 'assets/images/9.png',
    rating: 4.5,
    ratingCount: 165,
    price: 6.5,
    color: 0x929292,
    vitamins: ['vitamin B', 'vitamin C', 'vitamin D'],
    ingrediants: 'assets/icons/ingredient1.svg',
  ),
  Item(
    id: 10,
    name: 'Carrot',
    description:
        "Calories 41 , Lipides 0,2 g , Sodium 69 mg , Glucides 10 g , Protéines 0,9 g ",
    image: 'assets/images/10.png',
    rating: 4.5,
    ratingCount: 165,
    price: 6.5,
    color: 0x929292,
    vitamins: ['vitamin B', 'vitamin C', 'vitamin D'],
    ingrediants: 'assets/icons/ingredient1.svg',
  ),
  Item(
    id: 11,
    name: 'Artichoke',
    description:
        "Calories 47 , Lipides 0,2 g , Sodium 94 mg , Potassium 370 mg , Glucides 11 g",
    image: 'assets/images/11.png',
    rating: 4.5,
    ratingCount: 165,
    price: 6.5,
    color: 0x929292,
    vitamins: ['vitamin B', 'vitamin C', 'vitamin D'],
    ingrediants: 'assets/icons/ingredient1.svg',
  ),
  Item(
    id: 12,
    name: 'Eggplant',
    description:
        "Calories 25 , Lipides 0,2 g , Sodium 2 mg , Potassium 229 mg , Protéines 1 g",
    image: 'assets/images/12.png',
    rating: 4.5,
    ratingCount: 165,
    price: 6.5,
    color: 0x929292,
    vitamins: [
      'vitamin B',
      'vitamin C',
    ],
    ingrediants: 'assets/icons/ingredient1.svg',
  ),
  Item(
    id: 13,
    name: 'Potatoes',
    description:
        "This Fruit Soup may use jelly which is diced as well to add flavor and crowd to the Fruit Soup. I didn't have time to make the jelly, so I didn't use it",
    image: 'assets/images/13.png',
    rating: 4.5,
    ratingCount: 165,
    price: 6.5,
    color: 0x929292,
    vitamins: ['vitamin A', 'vitamin C', 'vitamin K'],
    ingrediants: 'assets/icons/ingredient1.svg',
  ),
  Item(
    id: 14,
    name: 'Peas',
    description:
        "This Fruit Soup may use jelly which is diced as well to add flavor and crowd to the Fruit Soup. I didn't have time to make the jelly, so I didn't use it",
    image: 'assets/images/14.png',
    rating: 4.5,
    ratingCount: 165,
    price: 6.5,
    color: 0x929292,
    vitamins: ['vitamin A', 'vitamin C', 'vitamin K'],
    ingrediants: 'assets/icons/ingredient1.svg',
  ),
  Item(
    id: 15,
    name: 'Mushrooms',
    description:
        "Calories 22 , Lipides 0,3 g	 , Sodium 5 mg	 , Potassium 318 mg	 , Glucides 3,3 g	 , Protéines 3,1 g , Magnésium	9 mg	",
    image: 'assets/images/15.png',
    rating: 4.5,
    ratingCount: 165,
    price: 6.5,
    color: 0x929292,
    vitamins: ['vitamin B', 'vitamin C', 'vitamin D'],
    ingrediants: 'assets/icons/ingredient1.svg',
  ),
  Item(
    id: 16,
    name: 'Pumpkin',
    description:
        "Calories 26 , Lipides 0,1 g	 , Sodium 1 mg	 , Potassium 340 mg	, Glucides 7 g	 , Protéines 1 g	 , Protéines 1 g	",
    image: 'assets/images/16.png',
    rating: 4.5,
    ratingCount: 165,
    price: 6.5,
    color: 0x929292,
    vitamins: ['vitamin B', 'vitamin C', 'vitamin D'],
    ingrediants: 'assets/icons/ingredient1.svg',
  ),
  Item(
    id: 17,
    name: 'Beetroot',
    description:
        "Calories 26 , Lipides 0,1 g	 , Sodium 1 mg	 , Potassium 340 mg	, Glucides 7 g	 , Protéines 1 g	 , Protéines 1 g	",
    image: 'assets/images/17.png',
    rating: 4.5,
    ratingCount: 165,
    price: 6.5,
    color: 0x9292921,
    vitamins: ['vitamin B', 'vitamin C', 'vitamin D'],
    ingrediants: 'assets/icons/ingredient1.svg',
  ),
  Item(
    id: 18,
    name: 'Cheese',
    description:
        "Calories 402 , Lipides 33 g	, Cholestérol 105 mg	 , Sodium 621 mg	, Potassium 98 mg	 , Glucides 1,3 g	, Protéines 25 g	, Magnésium	28 mg		",
    image: 'assets/images/18.png',
    rating: 4.5,
    ratingCount: 165,
    price: 6.5,
    color: 0x929292,
    vitamins: ['vitamin B', 'vitamin D'],
    ingrediants: 'assets/icons/ingredient1.svg',
  ),
];
