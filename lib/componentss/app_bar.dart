// ignore_for_file: deprecated_member_use, prefer_const_constructors, unnecessary_import

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

AppBar buildAppBar(BuildContext context,
    {required String title,
    required List<Widget> actions,
    required Widget leading}) {
  return AppBar(
    backgroundColor: Colors.white,
    brightness: Brightness.dark,
    elevation: 0,
    title: Text(
      title,
      style: TextStyle(fontWeight: FontWeight.w300),
    ),
    centerTitle: true,
    leading: leading,
    actions: actions,
  );
}
