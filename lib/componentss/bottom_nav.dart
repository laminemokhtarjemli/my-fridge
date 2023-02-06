import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:myfridge/Screens/home/home.dart';
import 'package:myfridge/Screens/home_page.dart';
import 'package:myfridge/Screens/home/profile_page.dart';
import 'package:myfridge/Screens/home/home_buy.dart.dart';
import 'package:myfridge/constants/constants.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70.0,
      width: double.infinity,
      decoration: BoxDecoration(
          color:  Color.fromARGB(255, 220, 220, 220),
          borderRadius: BorderRadius.circular(25)),
      padding:  EdgeInsets.symmetric(horizontal: kDefaultPadding * 1.5),
      margin: EdgeInsets.all(kDefaultPadding),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          NavItem(
            tap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const HomeScreen()));
            },
            icon: 'assets/icons/home.svg',
          ),
          NavItem(
            tap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => HomePage()));
            },
            icon: 'assets/icons/food.svg',
          ),
          NavItem(
            tap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => HomeBuy()));
            },
            icon: 'assets/icons/buy.svg',
          ),
          NavItem(
            tap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const ProfilePage()));
            },
            icon: 'assets/icons/profile.svg',
          ),
        ],
      ),
    );
  }
}

class NavItem extends StatelessWidget {
  const NavItem({Key? key, required this.tap, required this.icon})
      : super(key: key);

  final GestureTapCallback tap;
  final String icon;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: tap,
      child: SvgPicture.asset(icon),
    );
  }
}
