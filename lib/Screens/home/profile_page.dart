// ignore_for_file: library_private_types_in_public_api, prefer_const_declarations

import 'package:flutter/material.dart';
import 'package:myfridge/Games/Hangman.dart';
import 'package:myfridge/Models/user.dart';
import 'package:myfridge/componentss/bottom_nav.dart';
import 'package:myfridge/utils/user_preferences.dart';
import 'package:myfridge/widgets/button_widget.dart';
import 'package:myfridge/widgets/numbers_widget.dart';
import 'package:myfridge/widgets/profile_widget.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    final user = UserPreferences.myUser;
    return Scaffold(
      bottomNavigationBar: const BottomNavBar(),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: ListView(
        physics: const BouncingScrollPhysics(),
        children: [
          ProfileWidget(
            imagePath: user.imagePath,
            onClicked: () async {},
          ),
          const SizedBox(height: 24),
          buildName(user),
          const SizedBox(height: 24),
          Center(child: buildUpgradeButton()),
          const SizedBox(height: 24),
          const NumbersWidget(),
          const SizedBox(height: 48),
          buildAbout(user),
        ],
      ),
    );
  }

  Widget buildName(User user) => Column(
        children: [
          Text(
            user.name,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
          ),
          const SizedBox(height: 4),
          Text(
            user.email,
            style: const TextStyle(color: Colors.grey),
          )
        ],
      );

  Widget buildUpgradeButton() => ButtonWidget(
        text: 'Status',
        onClicked: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => HangMan()));
        },
      );

  Widget buildAbout(User user) => Container(
        padding: const EdgeInsets.symmetric(horizontal: 48),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'About',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            Text(
              user.about,
              style: const TextStyle(fontSize: 16, height: 1.4),
            ),
          ],
        ),
      );
}
