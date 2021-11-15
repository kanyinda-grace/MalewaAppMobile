import 'package:deleverryapp/src/pages/signupPage.dart';
import 'package:flutter/material.dart';

class SignInPage extends StatefulWidget {
  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  bool _toggleVsibility = true;

  Widget _builemailtexttfield() {
    return TextFormField(
        decoration: InputDecoration(
      hintText: "Votre email ou username",
      hintStyle: TextStyle(color: Color(0xFFBDC2CB), fontSize: 18.0),
    ));
  }

  Widget _builpasstexttfield() {
    return TextFormField(
        decoration: InputDecoration(
            hintText: "Votre mot de passe",
            hintStyle: TextStyle(color: Color(0xFFBDC2CB), fontSize: 18.0),
            suffixIcon: IconButton(
              onPressed: () {
                setState(() {
                  _toggleVsibility = !_toggleVsibility;
                });
              },
              icon: _toggleVsibility ? Icon(Icons.visibility_off) : Icon(Icons.visibility),
            )),
        obscureText: _toggleVsibility);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       //resizeToAvoidBottomPadding: false,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "SE CONNECTER",
              style: TextStyle(fontSize: 40.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 40.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Text(
                  "Mot de passe oublié",
                  style: TextStyle(
                      fontSize: 18.0,
                      color: Colors.blueAccent,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
            SizedBox(
              height: 10.0,
            ),
            Card(
              child: Padding(
                padding: EdgeInsets.all(2.0),
                child: Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Column(
                    children: <Widget>[
                      _builemailtexttfield(),
                      SizedBox(
                        height: 20.0,
                      ),
                      _builpasstexttfield()
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            Container(
                height: 50.0,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(25.0),
                ),
                child: Center(
                    child: Center(
                  child: Text(
                    "Connection",
                    style: TextStyle(color: Colors.white, fontSize: 18.0),
                  ),
                ))),
            Divider(
              height: 20.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "vous n'avez pas un compte",
                  style: TextStyle(
                      color: Color(0xFFBDC2CB), fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 10.0,
                ),
                GestureDetector(
                  onTap: (){
                    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context)=>SignUPage()));
                  },
                  child: Text("S'enregister",
                      style: TextStyle(
                          color: Colors.blueAccent, fontWeight: FontWeight.bold)),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
