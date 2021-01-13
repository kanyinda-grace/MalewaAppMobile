import 'package:flutter/material.dart';

class FoodCard extends StatelessWidget {
  final String categoryName;
  final imagePath;
  final numberOfItems;
  FoodCard({this.categoryName, this.imagePath, this.numberOfItems});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin:const EdgeInsets.only(right:20.0),
      child: Card(
          child: Row(children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
          child: Row(
            children: [
              Image(image: AssetImage(imagePath), height: 65.0, width: 65.0),
            ],
          ),
        ),
        SizedBox(width: 20.0),
        Padding(
          padding: const EdgeInsets.only(right: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [Text(categoryName,style:TextStyle(fontWeight: FontWeight.bold,fontSize:16.0)), Text("$numberOfItems Kinds")],
          ),
        )
      ])),
    );
  }
}
