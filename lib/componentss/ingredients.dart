// ignore_for_file: prefer_const_constructors, import_of_legacy_library_into_null_safe

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:myfridge/Models/Items/Item.dart';
import 'package:myfridge/constants/constants.dart';

class Ingredients extends StatelessWidget {
  const Ingredients({
    Key? key,
    required this.item,
  }) : super(key: key);

  final Item item;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50.0,
      child: ListView.builder(
          itemCount: item.ingrediants.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(kDefaultPadding),
                  color: Colors.white),
              width: 50.0,
              margin: EdgeInsets.only(right: kDefaultPadding),
              alignment: Alignment.center,
              child: SvgPicture.asset(item.ingrediants[index]),
            );
          }),
    );
  }
}
