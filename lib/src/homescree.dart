import 'package:deleverryapp/src/widget/food_category.dart';
import 'package:deleverryapp/src/widget/home_top_info.dart';
import 'package:deleverryapp/src/widget/search_field.dart';
import 'package:deleverryapp/src/widget/bought_food.dart';
import 'package:flutter/material.dart';


//data

import 'models/food_model.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      padding: EdgeInsets.only(top: 50, left: 20.0, right: 20.0),
      children: [
        HomeTopInfo(),
        FoodCategory(),
        Search(),
        SizedBox(
          height: 20.0,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Frequently Bought Foods',
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
            ),
            GestureDetector(
                onTap: () {},
                child: Text(
                  'View All',
                  style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.orangeAccent),
                ))
          ],
        ),
        SizedBox(
          height: 20.0,
        ),
        Column(
         
        )
      ],
    ));
  }
}

Widget _buildFoodItems(Food food) {
  return Container(
    margin: EdgeInsets.only(bottom: 20.0),
    child: BoughtFoods(
      id:food.id,
      name: "dddd",
      imagePath: food.imagePath,
      category: food.category,
      discount: 22.9,
      price: food.price,
      ratings: food.ratings,
    ),
  );
}
