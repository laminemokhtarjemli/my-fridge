// ignore_for_file: import_of_legacy_library_into_null_safe, file_names

import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:myfridge/Items/item_card_drinks.dart';
import 'package:myfridge/Models/Items/Item.dart';
import 'package:myfridge/Models/Items/itemDrink.dart';
import 'package:myfridge/Screens/home/QRcode.dart';
import 'package:myfridge/Screens/home/profile_page.dart';
import 'package:myfridge/Screens/home/souspage/homeFood.dart';
import 'package:myfridge/Screens/home/souspage/homeFruits.dart';
import 'package:myfridge/Screens/home/souspage/homeVeg.dart';
import 'package:myfridge/componentss/app_bar.dart';
import 'package:myfridge/componentss/bottom_nav.dart';
import 'package:myfridge/componentss/search_bar.dart';
import 'package:myfridge/constants/constants.dart';

class HomeDrink extends StatelessWidget {
  const HomeDrink({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const BottomNavBar(),
      appBar: buildAppBar(context,
          leading: Transform.translate(
              offset: const Offset(kDefaultPadding * 0.5, 0),
              child: IconButton(
                  icon: Image.asset('assets/images/user.png'),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ProfilePage()));
                  })),
          title: '',
          actions: <Widget>[
            IconButton(
                icon: SvgPicture.asset('assets/icons/camera.svg'),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const QrCode()));
                })
          ]),
      extendBody: true,
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(kDefaultPadding),
        child: SafeArea(
          // bottom: false,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                'Find the Best\nHealth for You',
                style: TextStyle(
                    color: Color.fromARGB(255, 0, 0, 0),
                    fontSize: 24,
                    fontWeight: FontWeight.w700),
              ),
              const SizedBox(height: kDefaultPadding),
              const SearchBar(),
              Row(children: [
                TextButton.icon(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const HomeFood()));
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
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const HomeDrink()));
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
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const HomeFruit()));
                  },
                  icon: Icon(
                    color: Colors.black,
                    Icons.food_bank,
                    size: 30.0,
                  ),

                  label: Text('Fruits',
                      style: TextStyle(
                        color: Colors.grey[800],
                      )), // <-- Text
                ),
                TextButton.icon(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const HomeVeg()));
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
                'Drinks',
                style: TextStyle(
                    color: Color.fromARGB(255, 0, 0, 0),
                    fontSize: 18,
                    fontFamily: 'Monteraal'),
              ),
              const SizedBox(height: kDefaultPadding),
              StaggeredGridView.countBuilder(
                padding: const EdgeInsets.all(0),
                crossAxisCount: 1,
                itemCount: demoItemsDrinks.length,
                crossAxisSpacing: 15,
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                mainAxisSpacing: 0,
                itemBuilder: (context, index) {
                  return ItemCardDrink(
                      item: demoItemsDrinks[index], index: index);
                },
                staggeredTileBuilder: (index) => const StaggeredTile.fit(1),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
