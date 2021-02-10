import 'package:flutter/material.dart';
import 'CreateAccount.dart';
import 'SignIn.dart';
import 'homepage.dart';
import 'rewards.dart';


class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new Container(
        height: 1000,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/leafBackground.png"),
            fit: BoxFit.fitWidth ,
          ),
        ),
        margin: const EdgeInsets.symmetric (horizontal: 10.0),
        alignment: Alignment.center,

        child: Column(
          children: <Widget>[
            new Container (
              margin: const EdgeInsets.only (top: 20.0, left:10.0),
              alignment: Alignment.topLeft,
              child: FlatButton(
                height: 30.0, minWidth: 30.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                  side: BorderSide(color: Colors.white),
                ),
                child: new Icon(Icons.arrow_back),
                color: Colors.white,
                padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 15.0),
                onLongPress: () {
                  navigateToHomeScreen(context);
                },
              ),
            ),

            new Container (
                margin: const EdgeInsets.only (top: 180.0),
                alignment: Alignment.center,
                child: Text("Oh No!\nYou are not logged in",
                    style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold, fontFamily: 'Montserrat'),
                    textAlign: TextAlign.center)
            ),

            new Container(
              padding: EdgeInsets.only(top: 20.0),
              alignment: Alignment.center,
              child: FlatButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18.0),
                  side: BorderSide(color: Color(0xFF457B3F)),
                ),
                color: Color(0xFF457B3F),
                textColor: Colors.white,
                padding: EdgeInsets.symmetric(horizontal: 150.0, vertical: 30.0),
                onPressed: (){
                  navigateToSignIn(context);
                },
                //enableFeedback:
                child: const Text('Login',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, fontFamily: 'Montserrat'),
                ),
              ),
            ),

            new Container(
              padding: EdgeInsets.only(top: 20.0),
              alignment: Alignment.center,
              child: FlatButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18.0),
                  side: BorderSide(color: Color(0xFF457B3F)),
                ),
                color: Color(0xFF457B3F),
                textColor: Colors.white,
                padding: EdgeInsets.symmetric(horizontal: 137.0, vertical: 30.0),
                onPressed: (){
                  navigateToCreateAccount(context);
                },
                //enableFeedback:
                child: const Text('Register',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, fontFamily: 'Montserrat'),
                ),
              ),
            ),
          ],
        ),
      ),
     );
}
navigateToCreateAccount(BuildContext context) {
  Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) => CreateAccount()));
  }
navigateToSignIn(BuildContext context) {
  Navigator.of(context).push(
      MaterialPageRoute(builder: (BuildContext context) => SignIn()));
  }
navigateToHomeScreen(BuildContext context) {
      Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) => MyHomePage()));
  }
}

