import 'package:deleverryapp/src/scopped_model/main_model.dart';
import 'package:deleverryapp/src/screen/main_screen.dart';
import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';



class App extends StatelessWidget {
  final MainModel mainModel = MainModel();
  @override
  Widget build(BuildContext context) {
    return ScopedModel<MainModel>(
      model: mainModel,
      child: MaterialApp(
        title: "food dubois",
        debugShowCheckedModeBanner: false,
        theme: ThemeData(primaryColor: Colors.blueAccent),
        home: Mainscreen(
          model: mainModel,
        )),
    );
  }
}
