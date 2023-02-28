import 'package:flutter/material.dart';

class CategoryMealsScreen extends StatelessWidget {
  // final String categoryId;
  // final String cateogryTitle;

  // CategoryMealsScreen(this.categoryId, this.cateogryTitle);

  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context).settings.arguments as Map<String, String>;

    return Scaffold(
      appBar: AppBar(
        title: Text(routeArgs['title']),
      ),
      body: ListView.builder(itemBuilder: (ctx, index) {

      }, itemCount: ,),
    );
  }
}
