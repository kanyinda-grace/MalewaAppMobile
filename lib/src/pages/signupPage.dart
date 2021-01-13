import 'package:deleverryapp/src/pages/signin_page.dart';
import 'package:flutter/material.dart';

class SignUPage extends StatefulWidget {
  @override
  _SignUPageState createState() => _SignUPageState();
}

class _SignUPageState extends State<SignUPage> {
  bool _toggleVsibility = true;
  bool _toggleconfirmVsibility = true;

  Widget _builemailtexttfield() {
    return TextFormField(
        decoration: InputDecoration(
      hintText: "Votre email ou username",
      hintStyle: TextStyle(color: Color(0xFFBDC2CB), fontSize: 18.0),
    ));
  }

  Widget _buildusernamefield() {
    return TextFormField(
        decoration: InputDecoration(
      hintText: "Votre username",
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
              icon: _toggleVsibility
                  ? Icon(Icons.visibility_off)
                  : Icon(Icons.visibility),
            )),
        obscureText: _toggleVsibility);
  }

  Widget _builconfirmpassfield() {
    return TextFormField(
        decoration: InputDecoration(
            hintText: "confirmer mot de passe",
            hintStyle: TextStyle(color: Color(0xFFBDC2CB), fontSize: 18.0),
            suffixIcon: IconButton(
              onPressed: () {
                setState(() {
                  _toggleconfirmVsibility = !_toggleconfirmVsibility;
                });
              },
              icon: _toggleconfirmVsibility
                  ? Icon(Icons.visibility_off)
                  : Icon(Icons.visibility),
            )),
        obscureText: _toggleconfirmVsibility);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "S'ENREGISTRE",
              style: TextStyle(fontSize: 40.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 40.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[],
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
                      _buildusernamefield(),
                      SizedBox(
                        height: 20.0,
                      ),
                      _builpasstexttfield(),
                      SizedBox(
                        height: 20.0,
                      ),
                      _builconfirmpassfield()
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
                  onTap: () {
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (BuildContext context) => 
                        SignInPage()));
                  },
                  child: Text("Se connecter",
                      style: TextStyle(
                          color: Colors.blueAccent,
                          fontWeight: FontWeight.bold)),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
