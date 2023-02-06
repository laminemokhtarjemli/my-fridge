// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:myfridge/constants/constants.dart';

class BuyButton extends StatelessWidget {
  const BuyButton({
    required Key key,
    required this.tap,
  }) : super(key: key);

  final GestureTapCallback tap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: tap,
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(kDefaultPadding * 2),
            color: kRedColor),
        height: 50.0,
        alignment: Alignment.center,
        child: Text(
          'Buy Now',
          style: TextStyle(
            color: Colors.white,
            fontSize: 18.0,
          ),
        ),
      ),
    );
  }
}
