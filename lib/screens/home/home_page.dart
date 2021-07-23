import 'package:flutter/material.dart';
import 'package:tudo_gostoso/models/recipe.dart';
import 'package:tudo_gostoso/screens/home/widgets/details.dart';
import 'package:tudo_gostoso/style.dart';

class HomePage extends StatelessWidget {
  final recipe = Recipe(
    name: "Bolo de côco",
    photo: "assets/images/bolo.jpg",
    preparationTime: 45,
    numberOfFavorites: 400,
    numberOfComments: 350,
    yield: 10,
    ingredientsPaste: [],
    ingredientsTopping: [],
    preparationModePaste: [],
    preparationModeTopping: [],
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: orangeTheme,
        title: Text(
          "Tudo Gostoso",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        leading: Image.asset(
          "assets/images/logo.jpg",
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(recipe.photo),
            Details(recipe),
          ],
        ),
      ),
    );
  }
}
