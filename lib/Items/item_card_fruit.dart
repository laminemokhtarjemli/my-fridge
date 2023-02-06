// ignore_for_file: import_of_legacy_library_into_null_safe, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:myfridge/Models/Items/itemFruit.dart';
import 'package:myfridge/Screens/details/details.dart';
import 'package:myfridge/Screens/details/details_fruit.dart';
import 'package:myfridge/constants/constants.dart';

class ItemCardfruit extends StatelessWidget {
  const ItemCardfruit({
    Key? key,
    required this.itemFruit,
    required this.index,
  }) : super(key: key);

  final ItemFruit itemFruit;
  final int index;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) =>
                    DetailsScreenFruit(itemFruit: itemFruit)));
      },
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            color: Color(itemFruit.color)),
        margin: EdgeInsets.only(
            top: index.isOdd ? 10 : 0, bottom: index.isOdd ? 0 : 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Hero(
              tag: itemFruit.id,
              child: Image.asset(
                itemFruit.image,
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
                        itemFruit.name,
                      ),
                      Text(
                        'Quantity ${itemFruit.price}',
                        style: const TextStyle(
                            color: Colors.black54, fontWeight: FontWeight.bold),
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
