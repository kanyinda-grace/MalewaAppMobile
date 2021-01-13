import 'package:flutter/material.dart';

class HomeTopInfo extends StatelessWidget {
  final textstyle = TextStyle(fontSize: 32.0, fontWeight: FontWeight.bold);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin:EdgeInsets.only(bottom:20.0),
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment:CrossAxisAlignment.start,
              children: [
                Text('votre plaisir', style: textstyle),
                Text('nous comblons', style: textstyle)
              ],
            ),
            Icon(Icons.notifications, size: 30.0, color: Colors.red)
          ]),
    );
  }
}
