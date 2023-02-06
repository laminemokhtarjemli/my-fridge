// ignore_for_file: import_of_legacy_library_into_null_safe

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:myfridge/Models/Items/itemDrink.dart';
import 'package:myfridge/Screens/details/details_drinks.dart';
import 'package:myfridge/constants/constants.dart';

class ItemCardDrink extends StatelessWidget {
  const ItemCardDrink({
    Key? key,
    required this.item,
    required this.index,
  }) : super(key: key);

  final ItemDrinks item;
  final int index;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => DetailsScreenDrink(item: item)));
      },
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25), color: Color(item.color)),
        margin: EdgeInsets.only(
            top: index.isOdd ? 10 : 0, bottom: index.isOdd ? 0 : 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Hero(
              tag: item.id,
              child: Image.asset(
                item.image,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: kDefaultPadding * 0.4),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        item.name,
                      ),
                      Text(
                        'Quantity ${item.price}',
                        style: const TextStyle(
                            color: kRedColor, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  IconButton(
                      icon: SvgPicture.asset('assets/icons/heart.svg'),
                      onPressed: () {})
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
