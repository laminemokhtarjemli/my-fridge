// ignore_for_file: library_private_types_in_public_api, avoid_unnecessary_containers, sized_box_for_whitespace, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:myfridge/Screens/home_page.dart';
import 'package:myfridge/componentss/bottom_nav.dart';

class DietGeneratorScreen extends StatefulWidget {
  const DietGeneratorScreen({Key? key}) : super(key: key);

  @override
  _DietGeneratorScreenState createState() => _DietGeneratorScreenState();
}

class _DietGeneratorScreenState extends State<DietGeneratorScreen> {
  List<String> meals = ['1 meal', '2 meals', '3 meals', '4 meals'];
  String selected = '4 meals';

  bool _isAnythingSelected = true;
  bool _isvegSelected = false;
  bool _isMedSelected = false;
  bool _isPaleoSelected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Row(
                // ignore: prefer_const_literals_to_create_immutables
                children: <Widget>[
                  const CircleAvatar(
                    radius: 15.0,
                    backgroundColor: Colors.transparent,
                    backgroundImage: AssetImage(
                      'assets/images/user.png',
                    ),
                  ),
                  const SizedBox(
                    width: 5.0,
                  ),
                ],
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.search,
                color: Colors.blueGrey[800],
                size: 25.0,
              ),
            )
          ],
        ),
        systemOverlayStyle: SystemUiOverlayStyle.dark,
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          top: 10.0,
          left: 30.0,
          right: 30.0,
          bottom: 20.0,
        ),
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Let us know your diet.',
                  style: TextStyle(
                    color: Colors.blueGrey[800],
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                Container(
                  height: 340.0,
                  child: GridView(
                    physics: const NeverScrollableScrollPhysics(),
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 15.0,
                      mainAxisSpacing: 15.0,
                    ),
                    children: <Widget>[
                      FoodTypeCard(
                        image: 'assets/images/sandwich.png',
                        title: 'Anything',
                        isSelected: _isAnythingSelected,
                        onPress: () {
                          setState(() {
                            _isAnythingSelected = !_isAnythingSelected;
                          });
                        },
                      ),
                      FoodTypeCard(
                        image: 'assets/images/diet.png',
                        title: 'Vegetarian',
                        isSelected: _isvegSelected,
                        onPress: () {
                          setState(() {
                            _isvegSelected = _isvegSelected;
                          });
                        },
                      ),
                      FoodTypeCard(
                        image: 'assets/images/bruschetta.png',
                        title: 'Meditarranean',
                        isSelected: _isMedSelected,
                        onPress: () {
                          setState(() {
                            _isMedSelected = _isMedSelected;
                          });
                        },
                      ),
                      FoodTypeCard(
                        image: 'assets/images/turkey.png',
                        title: 'Paleo',
                        isSelected: _isPaleoSelected,
                        onPress: () {
                          setState(() {
                            _isPaleoSelected = _isPaleoSelected;
                          });
                        },
                      ),
                    ],
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'I want to eat',
                      style: TextStyle(
                        color: Colors.blueGrey[800],
                        fontSize: 19.0,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(height: 10.0),
                    TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: const BorderSide(
                            width: 0.0,
                            style: BorderStyle.none,
                          ),
                        ),
                        filled: true,
                        fillColor: Colors.grey[200],
                        hintText: '1500 Calories',
                        hintStyle: TextStyle(
                          color: Colors.grey[500],
                          fontWeight: FontWeight.bold,
                          fontSize: 15.0,
                        ),
                        suffixText: 'Not sure?',
                        suffixStyle: const TextStyle(
                          color: Color(0xFF83D6C1),
                          fontWeight: FontWeight.w600,
                          fontSize: 15.0,
                        ),
                      ),
                    ),
                    const SizedBox(height: 15.0),
                    Text(
                      'in how many meals?',
                      style: TextStyle(
                        color: Colors.blueGrey[800],
                        fontSize: 19.0,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(height: 10.0),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 16.0,
                          vertical: 4.0,
                        ),
                        child: DropdownButton<String>(
                          isExpanded: true,
                          underline: const SizedBox.shrink(),
                          value: selected,
                          style: TextStyle(
                            color: Colors.grey[500],
                            fontWeight: FontWeight.bold,
                            fontSize: 15.0,
                          ),
                          onChanged: (value) {
                            setState(() {
                              selected = value!;
                            });
                          },
                          items: meals.map((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}

class FoodTypeCard extends StatelessWidget {
  const FoodTypeCard(
      {required this.image,
      required this.title,
      required this.isSelected,
      required this.onPress});

  final String image;
  final String title;
  final bool isSelected;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        decoration: BoxDecoration(
          color: isSelected ? const Color(0xFF83D6C1) : Colors.grey[200],
          borderRadius: BorderRadius.circular(4.0),
        ),
        child: Stack(
          children: <Widget>[
            Positioned(
              right: 10.0,
              top: 10.0,
              child: isSelected
                  ? Icon(
                      Icons.check_circle_outline,
                      color: Colors.black.withOpacity(0.2),
                    )
                  : const SizedBox.shrink(),
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Image(
                    image: AssetImage(
                      image,
                    ),
                  ),
                  Text(
                    title,
                    style: TextStyle(
                      color:
                          isSelected ? Colors.blueGrey[800] : Colors.grey[500],
                      fontSize: 17.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
