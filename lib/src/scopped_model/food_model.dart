import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:scoped_model/scoped_model.dart';
import '../models/food_model.dart';

class FoodModel extends Model {
  List<Food> _foods = [];

  List<Food> get foods {
    return List.from(_foods);
  }

  void addFood(Food food) {
    _foods.add(food);
  }

  void fetchFoods() {
    http
        .get("http://172.17.25.1/delevery/api/foods/getfoods.php")
        .then((http.Response response) {
      print("fetching data : ${response.body}");
      // print('fetching data )

      final List fetchedData = json.decode(response.body);
      final List<Food> fetchedFoodItems = [];

      //
      fetchedData.forEach((data) {
        Food food = Food(
            id: data["id"],
            category: data['category_id'],
            discount: double.parse(data['discount']),
            imagePath: data['image_path'],
            name: data['title'],
            price: double.parse(data['price']));
        fetchedFoodItems.add(food);
      });
      _foods = fetchedFoodItems;
      print(_foods);
    });
  }
}
