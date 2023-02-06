// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:myfridge/Models/reciep_card.dart';
import 'package:myfridge/Models/recipAPI.dart';
import 'package:myfridge/Models/recipe.dart';

class HomeRecip extends StatefulWidget {
  const HomeRecip({Key? key}) : super(key: key);

  @override
  _HomeRecipState createState() => _HomeRecipState();
}

class _HomeRecipState extends State<HomeRecip> {
  late List<Recipe> _recipes;
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    getRecipes();
  }

  Future<void> getRecipes() async {
    _recipes = await RecipeApi.getRecipe();
    setState(() {
      _isLoading = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: const [
              Icon(Icons.restaurant_menu),
              SizedBox(width: 10),
              Text(
                'Food Recipe',
                style: TextStyle(color: Colors.black),
              )
            ],
          ),
        ),
        body: _isLoading
            ? const Center(child: CircularProgressIndicator())
            : ListView.builder(
                itemCount: _recipes.length,
                itemBuilder: (context, index) {
                  return RecipeCard(
                      title: _recipes[index].name,
                      cookTime: _recipes[index].totalTime,
                      rating: _recipes[index].rating.toString(),
                      thumbnailUrl: _recipes[index].images);
                },
              ));
  }
}
