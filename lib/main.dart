import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/screens/tabs_screen.dart';
import './screens/meal_detail_screen.dart';
import './screens/categories_meals_screen.dart';
import './screens/categories_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DeliMeals',
      theme: ThemeData(
        primarySwatch: Colors.pink,
        accentColor: Colors.amber,
        canvasColor: Color.fromRGBO(255, 254, 229, 1),
        fontFamily: 'Raleway',
      ),
      initialRoute: '/',
      routes: {
        '/': (ctx) => TabScreen(),
        CategoryMealsScreen.routeName: (ctx) => CategoryMealsScreen(),
        MealDetailScreen.routeName: (ctx) => MealDetailScreen(),
      },
      onGenerateRoute: (settings) {
        return MaterialPageRoute(builder: (ctx) => CategoriesScreen());
      },
      onUnknownRoute: (settings) {
        // similar to 404 page
        return MaterialPageRoute(builder: (ctx) => CategoriesScreen());
      },
    );
  }
}
