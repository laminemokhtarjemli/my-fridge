// ignore_for_file: prefer_const_constructors, import_of_legacy_library_into_null_safe

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:myfridge/Models/Items/itemFood.dart';
import 'package:myfridge/componentss/app_bar.dart';
import 'package:myfridge/componentss/qty_counter.dart';
import 'package:myfridge/constants/constants.dart';

class DetailsScreenFood extends StatelessWidget {
  final ItemFood item;

  const DetailsScreenFood({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: buildAppBar(context,
          leading: IconButton(
              icon: SvgPicture.asset('assets/icons/back.svg'),
              onPressed: () {
                Navigator.pop(context);
              }),
          title: 'Detail',
          actions: <Widget>[
            IconButton(
                icon: SvgPicture.asset('assets/icons/dots.svg'),
                onPressed: () {})
          ]),
      body: Stack(
        alignment: Alignment.topCenter,
        children: [
          Container(
            margin: EdgeInsets.only(top: size.height * 0.2),
            padding: EdgeInsets.only(top: size.height * 0.2),
            height: size.height * 0.8,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(kDefaultPadding * 5),
                  topRight: Radius.circular(kDefaultPadding * 5),
                ),
                color: Color(item.color)),
            child: SingleChildScrollView(
              padding: EdgeInsets.fromLTRB(
                  kDefaultPadding, 0, kDefaultPadding, kDefaultPadding),
              child: SafeArea(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: kDefaultPadding),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          'Detail',
                          style: TextStyle(fontSize: 18),
                        ),
                        QtyCounter(),
                      ],
                    ),
                    SizedBox(height: kDefaultPadding),
                    Text(
                      item.description,
                      style: TextStyle(fontSize: 14),
                    ),
                    SizedBox(height: kDefaultPadding),
                    SizedBox(height: kDefaultPadding),
                    Text(
                      'Ingredients',
                      style: TextStyle(fontSize: 18),
                    ),
                    SizedBox(height: kDefaultPadding),
                    SizedBox(height: kDefaultPadding * 2),
                  ],
                ),
              ),
            ),
          ),
          Hero(
              tag: item.id,
              child: Image.asset(
                item.image,
                height: size.height * 0.4,
                fit: BoxFit.fitHeight,
              )),
        ],
      ),
    );
  }
}
