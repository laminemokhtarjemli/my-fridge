// ignore_for_file: import_of_legacy_library_into_null_safe

import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:myfridge/Models/Items/Item.dart';
import 'package:myfridge/Models/item_card.dart';
import 'package:myfridge/Screens/expenses/Budget.dart';
import 'package:myfridge/Screens/home/QRcode.dart';
import 'package:myfridge/Screens/home/profile_page.dart';
import 'package:myfridge/Screens/home/souspage/homeDrink.dart';
import 'package:myfridge/Screens/home/souspage/homeFruits.dart';
import 'package:myfridge/componentss/app_bar.dart';
import 'package:myfridge/componentss/bottom_nav.dart';
import 'package:myfridge/componentss/search_bar.dart';
import 'package:myfridge/constants/constants.dart';
import 'souspage/homeFood.dart';
import 'souspage/homeVeg.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar:  BottomNavBar(),
      appBar: buildAppBar(context,
          leading: Transform.translate(
              offset: Offset(kDefaultPadding * 0.5, 0),
              child: IconButton(
                  icon: Image.asset('assets/images/user.png'),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ProfilePage()));
                  })),
          title: '',
          actions: <Widget>[
            IconButton(
                icon: SvgPicture.asset('assets/icons/Money.svg'),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => BudgetScreen()));
                })
          ]),
      extendBody: true,
      body: SingleChildScrollView(
        padding: EdgeInsets.all(kDefaultPadding),
        child: SafeArea(
          // bottom: false,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Find the Best\nHealth for You',
                style: TextStyle(
                    color: Color.fromARGB(255, 0, 0, 0),
                    fontSize: 24,
                    fontWeight: FontWeight.w700),
              ),
               SizedBox(height: kDefaultPadding),
               SearchBar(),
              Row(children: [
                TextButton.icon(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => HomeFood()));
                  },
                  icon: Icon(
                    color: Colors.black,
                    Icons.food_bank,
                    size: 30.0,
                  ),
                  label: Text('Food',
                      style: TextStyle(
                        color: Colors.grey[800],
                      )), // <-- Text
                ),
                TextButton.icon(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => HomeDrink()));
                  },
                  icon: Icon(
                    color: Colors.black,
                    Icons.food_bank,
                    size: 30.0,
                  ),
                  // ignore: prefer_const_constructors
                  label: Text('Drinks',
                      style: TextStyle(
                        color: Colors.grey[800],
                      )), // <-- Text
                ),
                TextButton.icon(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => HomeFruit()));
                  },
                  icon: Icon(
                    color: Colors.black,
                    Icons.food_bank,
                    size: 30.0,
                  ),
                  // ignore: prefer_const_constructors
                  label: Text('Fruits',
                      style: TextStyle(
                        color: Colors.grey[800],
                      )), // <-- Text
                ),
                TextButton.icon(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => HomeVeg()));
                  },
                  icon: Icon(
                    color: Colors.black,
                    Icons.food_bank,
                    size: 30.0,
                  ),
                  // ignore: prefer_const_constructors
                  label: Text('Veg',
                      style: TextStyle(
                        color: Colors.grey[800],
                      )), // <-- Text
                ),
              ]),
              const SizedBox(height: kDefaultPadding),
              const Text(
                'Whats on my fridge',
                style: TextStyle(
                    color: Color.fromARGB(255, 0, 0, 0),
                    fontSize: 18,
                    fontFamily: 'Monteraal'),
              ),
              SizedBox(height: kDefaultPadding),
              StaggeredGridView.countBuilder(
                padding: EdgeInsets.all(0),
                crossAxisCount: 2,
                itemCount: demoItems.length,
                crossAxisSpacing: 15,
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                mainAxisSpacing: 0,
                itemBuilder: (context, index) {
                  return ItemCard(item: demoItems[index], index: index);
                },
                staggeredTileBuilder: (index) => StaggeredTile.fit(1),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
