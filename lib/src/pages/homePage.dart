import 'package:deleverryapp/src/models/food_model.dart';
import 'package:deleverryapp/src/scopped_model/food_model.dart';
import 'package:deleverryapp/src/scopped_model/main_model.dart';
import 'package:deleverryapp/src/widget/food_category.dart';
import 'package:deleverryapp/src/widget/home_top_info.dart';
import 'package:deleverryapp/src/widget/search_field.dart';
import 'package:deleverryapp/src/widget/bought_food.dart';
import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';

class HomePage extends StatefulWidget {
  // final FoodModel foodModel;
  //HomePage({this.foodModel});
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // List<Food> _foods = foods;
  @override
  void initState() {
    //widget.foodModel.fetchFoods();
    super.initState();
  }

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
        ScopedModelDescendant<MainModel>(
          builder: (BuildContext context, Widget child, MainModel model) {
            return Column(
              children: model.foods.map(_buildFoodItems).toList(),
            );
          },
        )
      ],
    ));
  }
}

Widget _buildFoodItems(Food food) {
  return Container(
    margin: EdgeInsets.only(bottom: 20.0),
    child: BoughtFoods(
      id: food.id,
      name: food.name,
      imagePath: food.imagePath,
      category: food.category,
      discount: food.discount,
      price: food.price,
      ratings: food.ratings,
    ),
  );
}
