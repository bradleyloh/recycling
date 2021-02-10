import 'package:flutter/material.dart';

class ProfileLoggedIn extends StatefulWidget {
  @override
  _ProfileLoggedInState createState() => _ProfileLoggedInState();
}

class _ProfileLoggedInState extends State<ProfileLoggedIn> {
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

            ]
        ),
      ),
    );
  }

}
