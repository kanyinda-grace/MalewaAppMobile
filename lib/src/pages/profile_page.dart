import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
    body:Container(
      padding: EdgeInsets.symmetric(vertical: 50.0, horizontal: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
 Text("Profile", style: TextStyle(fontSize: 32.0, fontWeight: FontWeight.bold),),
 SizedBox(height: 20.0,),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
          
          Row(children:<Widget> [
            Container(height: 120.0,
            width: 120.0,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(60.0),
            boxShadow: [
              BoxShadow(blurRadius: 3.0,offset:Offset(0,4.0),
              color: Colors.black38 )
            ],
            image: DecorationImage(fit: BoxFit.cover,
            image: AssetImage("assets/images/breakfast.jpeg")
            )
            ),
            ),
            SizedBox(width: 20.0,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              Text("Gaston maxdubois", style: TextStyle(fontSize: 16.0),),
              SizedBox(height: 10.0,),
              Text("+24312345", style: TextStyle(color: Colors.grey),),
              SizedBox(height: 10.0,),
              Container(height: 25.0,
              width:60.0,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(20.0)),
              child: Center(child: Text("Edit", style: TextStyle(color: Colors.blue, fontSize: 16.0),),),
              ),
            ],)
          ],)
        ],)
      ],),
    ),
       
      
    );
  }
}
