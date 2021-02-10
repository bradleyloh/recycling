import 'package:flutter/material.dart';
import 'package:email_validator/email_validator.dart';

import 'homepage.dart';
import 'Authenticator.dart';
import 'SignIn.dart';
import 'main.dart';

String _email= "";

class PasswordReset extends StatefulWidget {
  @override
  _PasswordResetState createState() => _PasswordResetState();
}

class _PasswordResetState extends State<PasswordReset> {
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
              margin: const EdgeInsets.only (top: 150, bottom: 30),
              child: Text("Forgot your password?",
                  style: TextStyle(fontFamily: 'Montserrat', fontSize: 28, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center),
            ),

            new Container (
              margin: const EdgeInsets.only (bottom: 30),
              child: Text("Don't worry! Just key in your email address and we will get your account back in no time.",
                  style: TextStyle(fontFamily: 'Montserrat', fontSize: 18),
                  textAlign: TextAlign.center),
            ),


            new Container(
              padding: EdgeInsets.only(left: 20.0, right: 20.0, bottom: 50.0),
              child: TextFormField(

                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  hintText: 'Enter your E-mail',
                  border: OutlineInputBorder(
                    borderRadius: const BorderRadius.all(
                      const Radius.circular(30.0),

                    ),
                  ),

                ),
                validator: (email)=>EmailValidator.validate(email)? null:"Invalid email address",

              ),
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
                padding: EdgeInsets.symmetric(horizontal: 100.0, vertical: 30.0),
                onPressed: (){
                  navigateToAuthenticator(context);
                },
                //enableFeedback:
                child: const Text('Reset Password',
                  style: TextStyle(fontFamily: 'Montserrat', fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              margin: const EdgeInsets.symmetric (vertical: 10.0),
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

          ],
        ),
      ),

    );
  }
  navigateToHomeScreen(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) => MyHomePage()));
  }
  navigateToAuthenticator(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) => Authenticator()));
  }
  navigateToSignIn(BuildContext context) {
    Navigator.of(context).push(
        MaterialPageRoute(builder: (BuildContext context) => SignIn()));
  }

}