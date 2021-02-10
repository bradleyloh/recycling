import 'package:flutter/material.dart';
import 'Profile.dart';
import 'CreateAccount.dart';
import 'PasswordReset.dart';
import 'homepage.dart';
import 'ProfileLoggedIn.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
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
              margin: const EdgeInsets.only (top: 110, bottom: 60),
              child: Text("Welcome back!",
                  style: TextStyle(fontFamily: 'Montserrat', fontSize: 28, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center),
            ),

          new Container(
            padding: EdgeInsets.only(left: 20.0, right: 20.0, bottom: 20.0),
            child: TextFormField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  hintText: 'Username',
                  border: OutlineInputBorder(
                  borderRadius: const BorderRadius.all(
                  const Radius.circular(30.0),

                ),
                ),
                ),
          ),
          ),
          new Container(
            padding: EdgeInsets.only(left: 20.0, right: 20.0, bottom: 10.0),
            child: TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                hintText: 'Password',
                border: OutlineInputBorder(
                  borderRadius: const BorderRadius.all(
                    const Radius.circular(30.0),
                  ),

                ),
              ),
            ),
          ),

            new Container(
              padding: EdgeInsets.only(bottom: 30.0),
              alignment: Alignment.center,
              child: FlatButton(
                shape: RoundedRectangleBorder(
                  side: BorderSide.none,
                ),
                textColor: Colors.white,
                onPressed: (){
                  navigateToForgotPassword(context);
                },
                //enableFeedback:
                child: const Text('Forgot Password?',
                    style: TextStyle(fontFamily: 'Montserrat', fontSize: 16, color: Color(0xFF0A7A00), fontWeight: FontWeight.bold)
                ),
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
              padding: EdgeInsets.symmetric(horizontal: 150.0, vertical: 30.0),
              onPressed: (){
                navigateToProfileLoggedIn(context);
              },
              //enableFeedback:
          child: const Text('Login',
              style: TextStyle(fontFamily: 'Montserrat', fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
      ),

            new Container(
              alignment: Alignment.center,
              child: FlatButton(
                shape: RoundedRectangleBorder(
                  side: BorderSide.none,
                ),
                textColor: Colors.white,
                onPressed: (){
                  navigateToCreateAccount(context);
                },
                //enableFeedback:
                child: const Text('Don’t have an account? Sign up',
                    style: TextStyle(fontFamily: 'Montserrat', fontSize: 16, color: Color(0xFF0A7A00),fontWeight: FontWeight.bold)
                ),
              ),
            ),

          ],
    ),
    ),

    );
  }
  navigateToProfileLoggedIn(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) => ProfileLoggedIn()));
  }
  navigateToCreateAccount(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) => CreateAccount()));
  }
  navigateToHomeScreen(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) => MyHomePage()));
  }
  navigateToForgotPassword(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) => PasswordReset()));
  }

}


