import 'package:flutter/material.dart';

class OrderCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
         crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
          Container(height: 75.0,
          width: 45.0,
          decoration:BoxDecoration(
            border : Border.all(width:2.0, color:Color(0xFFFD3D3D3)),
            
            borderRadius: BorderRadius.circular(13.0) 
          ),

          child: Column(children:<Widget> [
            InkWell(
              onTap: (){},
              child: Icon(Icons.keyboard_arrow_up,color:Color(0xFFFD3D3D3))),
            Text('0', style: TextStyle(color:Color(0xFFFD3D3D3)),),
             InkWell(
              onTap: (){},
              child: Icon(Icons.keyboard_arrow_down,color:Color(0xFFFD3D3D3)),)
          ],
          )
          ,),
          SizedBox(width:20.0),
          Container(
            height: 70.0,width:70.0
            ,
            decoration: BoxDecoration(
              image: DecorationImage(
                image:AssetImage("assets/images/lunch.jpeg"),
                fit:BoxFit.cover
              ),
              borderRadius: BorderRadius.circular(35.0),
              boxShadow: [
                BoxShadow(
                  color: Colors.black,blurRadius:5.0,
                  offset:Offset(5.0,5.0)
                )
              ]
            )
            ,
          ),SizedBox(width:20.0),
          Padding(
            padding: const EdgeInsets.only(top:2.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text("Grilled chicken", style:TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold)),
                SizedBox(height: 10.0,),
                Text("3.0",style:TextStyle(fontSize: 16.0,color:Colors.orangeAccent)),
                
                Container(
                  height: 30.0,
                  width: 120.0,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                    Container(
                      margin: const EdgeInsets.only(right: 10.0),
                      child: Row(children: [
                        Text('chicken', style: TextStyle(color: Colors.grey ,fontWeight: FontWeight.bold)),
                        SizedBox(width: 5.0,),
                        InkWell(
                          onTap: (){},
                          child: Text('x', style: TextStyle(color: Colors.grey ,fontWeight: FontWeight.bold)))
                      ],),
                    ) ],
                  ),
                ),
               
              ],
            ),),
            Spacer(),
        GestureDetector(
          onTap: (){},
          child: Icon(Icons.cancel))
        ]
        ,),
        
      ),
      
    );
  }
}
