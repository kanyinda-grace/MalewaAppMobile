import 'package:deleverryapp/src/pages/favorite_page.dart';
import 'package:deleverryapp/src/pages/homePage.dart';
import 'package:deleverryapp/src/pages/order_page.dart';
import 'package:deleverryapp/src/pages/profile_page.dart';
import 'package:deleverryapp/src/scopped_model/main_model.dart';
import 'package:flutter/material.dart';

class Mainscreen extends StatefulWidget {
  final MainModel model;
  Mainscreen({this.model});
  @override
  _MainscreenState createState() => _MainscreenState();
}

class _MainscreenState extends State<Mainscreen> {
  int currentTabIndex = 0;
  HomePage homePage;
  OrderPage orderPage;
  FavoritePage favoritePage;
  ProfilePage profilePage;
  List<Widget> pages;
  Widget currentPage;

  @override
  void initState() {
  
    //fecth the data from fetch methd on food
    widget.model.fetchFoods();
    homePage = HomePage();
    orderPage = OrderPage();
    favoritePage = FavoritePage();
    profilePage = ProfilePage();
    pages = [homePage, orderPage, favoritePage, profilePage];

    currentPage = homePage;  super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          onTap: (int index) {
            setState(() {
              currentTabIndex = index;
              currentPage = pages[index];
            });
          },
          currentIndex: currentTabIndex,
          type: BottomNavigationBarType.fixed,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(Icons.home), title: Text('Home')),
            BottomNavigationBarItem(
                icon: Icon(Icons.shopping_cart), title: Text('Orders')),
            BottomNavigationBarItem(
                icon: Icon(Icons.favorite), title: Text('Favorite')),
            BottomNavigationBarItem(
                icon: Icon(Icons.person), title: Text('Profile')),
          ],
        ),
        body: currentPage);
  }
}
