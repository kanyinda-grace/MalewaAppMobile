import 'package:deleverryapp/src/widget/custom_list_tile.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  bool turOfNotification = false;
  bool turnOnLocation = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Container(
          padding: EdgeInsets.symmetric(vertical: 50.0, horizontal: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Profile",
                style: TextStyle(fontSize: 32.0, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20.0,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Container(
                        height: 120.0,
                        width: 120.0,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(60.0),
                            boxShadow: [
                              BoxShadow(
                                  blurRadius: 3.0,
                                  offset: Offset(0, 4.0),
                                  color: Colors.black38)
                            ],
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage(
                                    "assets/images/breakfast.jpeg"))),
                      ),
                      SizedBox(
                        width: 20.0,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Gaston maxdubois",
                            style: TextStyle(fontSize: 16.0),
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Text(
                            "+24312345",
                            style: TextStyle(color: Colors.grey),
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Container(
                            height: 25.0,
                            width: 60.0,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20.0)),
                            child: Center(
                              child: Text(
                                "Edit",
                                style: TextStyle(
                                    color: Colors.blue, fontSize: 16.0),
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 30.0,
              ),
              Text("Account",
                  style:
                      TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold)),
              SizedBox(
                height: 30.0,
              ),
              Card(
                elevation: 3.0,
                child: Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      CustomList(
                        icon: Icons.location_on,
                        text: "Location",
                      ),
                      Divider(
                        height: 10.0,
                        color: Colors.grey,
                      ),
                      CustomList(
                        icon: Icons.visibility,
                        text: "Change Password",
                      ),
                      Divider(
                        height: 10.0,
                        color: Colors.grey,
                      ),
                      CustomList(
                        icon: Icons.shopping_cart,
                        text: "Shopping",
                      ),
                      Divider(
                        height: 10.0,
                        color: Colors.grey,
                      ),
                      CustomList(
                        icon: Icons.payment,
                        text: "Payment",
                      ),
                      Divider(
                        height: 10.0,
                        color: Colors.grey,
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 30.0,
              ),
              Text("Notifications",
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  )),
              SizedBox(
                height: 20.0,
              ),
              Card(
                elevation: 3.0,
                child: Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Column(
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "App notifications",
                            style: TextStyle(fontSize: 16.0),
                          ),
                          Switch(
                            value: turOfNotification,
                            onChanged: (bool value) {
                              setState(() {
                                turOfNotification = value;
                              });
                            },
                          )
                        ],
                      ),
                      Divider(height: 13.0, color: Colors.green),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "App location",
                            style: TextStyle(fontSize: 16.0),
                          ),
                          Switch(
                            value: turnOnLocation,
                            onChanged: (bool value) {
                              setState(() {
                                turnOnLocation = value;
                              });
                            },
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20.0,),
            Text("Other", style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold,)),
            SizedBox(height: 20.0,),
            Card(child: Padding(padding: EdgeInsets.all(16.0),
            child: Container(width: MediaQuery.of(context).size.width,
            child: Column(crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Langauage', style: TextStyle(fontSize: 16.0),),
              SizedBox(height: 3.0),
              Divider(height: 10.0,
              color: Colors.grey,),Text("Currency", style: TextStyle(fontSize: 16.0),)
            ],
            
            ),
            
          ),)
            
            )],
          )),
    ));
  }
}
