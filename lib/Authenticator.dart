import 'package:flutter/material.dart';
import 'homepage.dart';
import 'SignIn.dart';

class Authenticator extends StatefulWidget {
  @override
  _AuthenticatorState createState() => _AuthenticatorState();
}

class _AuthenticatorState extends State<Authenticator> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset : false,

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
              margin: const EdgeInsets.only (top: 250),
              child: Text("Password Reset Success!",
                  style: TextStyle(fontFamily: 'Montserrat', fontSize: 30, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center),
            ),

            new Container (
            margin: const EdgeInsets.symmetric (vertical: 40),
            child: Text("A new password has been sent to your email address. Please change your password after logging in.",
            style: TextStyle(fontFamily: 'Montserrat', fontSize: 18),
            textAlign: TextAlign.center),
            ),

            new Container(
              alignment: Alignment.center,
              child: FlatButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18.0),
                  side: BorderSide(color: Color(0xFF457B3F)),
                ),
                color: Color(0xFF457B3F),
                textColor: Colors.white,
                padding: EdgeInsets.symmetric(horizontal: 110.0, vertical: 30.0),
                onPressed: (){
                  navigateToSignIn(context);
                },
                //enableFeedback:
                child: const Text('Return to login',
                  style: TextStyle(fontFamily: 'Montserrat', fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              margin: const EdgeInsets.symmetric (vertical: 10.0),
            ),

          ]
    ),
    ),
    );
  }
  navigateToSignIn(BuildContext context) {
    Navigator.of(context).push(
        MaterialPageRoute(builder: (BuildContext context) => SignIn()));
  }

}
