import 'package:flutter/material.dart';

class CategoryMealsScreen extends StatelessWidget {
  final String categoryId;
  final String cateogryTitle;

  CategoryMealsScreen(this.categoryId, this.cateogryTitle);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(cateogryTitle),
      ),
      body: Center(
        child: Text('The Recipes For the Category!'),
      ),
    );
  }
}
