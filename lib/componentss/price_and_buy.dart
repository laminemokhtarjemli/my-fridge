// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:myfridge/Models/Items/Item.dart';
import 'package:myfridge/constants/constants.dart';
import 'buy_button.dart';

class PriceAndBuy extends StatelessWidget {
  const PriceAndBuy({
    Key? key,
    required this.item,
  }) : super(key: key);

  final Item item;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            flex: 1,
            child: Column(
              children: [
                const Text(
                  'Price',
                  // ignore: unnecessary_const
                  style: const TextStyle(
                    fontSize: 18.0,
                  ),
                ),
                RichText(
                  text: TextSpan(children: [
                    const TextSpan(
                        text: '\$ ',
                        style: TextStyle(color: kRedColor, fontSize: 22)),
                    TextSpan(
                        text: item.price.toString(),
                        style:
                            const TextStyle(color: Colors.black, fontSize: 22))
                  ]),
                )
              ],
            )),
      ],
    );
  }
}
