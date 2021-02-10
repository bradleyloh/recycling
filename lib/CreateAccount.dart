import 'package:flutter/material.dart';
import 'package:email_validator/email_validator.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'Profile.dart';
import 'SignIn.dart';
import 'homepage.dart';
import 'HomeScreen.dart';

final _formKey = GlobalKey<FormState>();

class CreateAccount extends StatefulWidget {
  @override
  _CreateAccountState createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {

  String _name="",
      _email="",
      _password= "";

  final fullNameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

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

        child: Form(
          key: _formKey,
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
              margin: const EdgeInsets.only (top: 30, bottom: 50),
              child: Text("Welcome Onboard!",
                  style: TextStyle(fontFamily: 'Montserrat', fontSize: 28, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center),
            ),

            new Container(
              padding: EdgeInsets.only(left: 20.0, right: 20.0, bottom: 20.0),
              child: TextFormField(
                textCapitalization: TextCapitalization.words,
                controller: fullNameController,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  hintText: 'Enter your full name',
                  border: OutlineInputBorder(
                    borderRadius: const BorderRadius.all(
                      const Radius.circular(30.0),

                    ),
                  ),
                ),
                onSaved: (name)=> _name = name,
                textInputAction: TextInputAction.next,
              ),
            ),

            new Container(
              padding: EdgeInsets.only(left: 20.0, right: 20.0, bottom: 20.0),
              child: TextFormField(
                controller: emailController,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  hintText: 'Enter your email',
                  border: OutlineInputBorder(
                    borderRadius: const BorderRadius.all(
                      const Radius.circular(30.0),
                    ),

                  ),
                ),
                textInputAction: TextInputAction.next,
                validator: (email)=>EmailValidator.validate(email)? null:"Invalid email address",
                onSaved: (email)=> _email = email,
              ),
            ),

            new Container(
              padding: EdgeInsets.only(left: 20.0, right: 20.0, bottom: 20.0),
              child: TextFormField(
                controller: passwordController,
                obscureText: true,
                decoration: InputDecoration(
                  suffixIcon: Icon(Icons.lock),
                  filled: true,
                  fillColor: Colors.white,
                  hintText: 'Enter password',
                  border: OutlineInputBorder(
                    borderRadius: const BorderRadius.all(
                      const Radius.circular(30.0),
                    ),

                  ),
                ),
                validator: (password){
                  Pattern pattern =
                      r'^(?=.*[0-9]+.*)(?=.*[a-zA-Z]+.*)[0-9a-zA-Z]{6,}$';
                  RegExp regex = new RegExp(pattern);
                  if (!regex.hasMatch(password))
                    return 'Invalid password';
                  else
                    return null;
                },
                onSaved: (password)=> _password = password,
                textInputAction: TextInputAction.next,
              ),

            ),

            new Container(
              padding: EdgeInsets.only(left: 20.0, right: 20.0, bottom: 60.0),
              child: TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                  suffixIcon: Icon(Icons.lock),
                  filled: true,
                  fillColor: Colors.white,
                  hintText: 'Confirm password',
                  border: OutlineInputBorder(
                    borderRadius: const BorderRadius.all(
                      const Radius.circular(30.0),
                    ),
                  ),
                ),
                textInputAction: TextInputAction.done,
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
                padding: EdgeInsets.symmetric(horizontal: 137.0, vertical: 30.0),
                onPressed: (){
                  if(_formKey.currentState.validate()){
                    _formKey.currentState.save();
                    navigateToHomeScreen(context);
                    toastMessage("Name: $_name\nEmail: $_email\nPassword: $_password");
                  }
                },
                //enableFeedback:
                child: const Text('Register',
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
                  navigateToSignIn(context);
                },
                //enableFeedback:
                child: const Text('Already have an account? Log In',
                    style: TextStyle(fontFamily: 'Montserrat', fontSize: 16, color: Color(0xFF0A7A00),fontWeight: FontWeight.bold)
                ),
              ),
            ),
          ],
        ),
      ),

      ),
    );
  }
  navigateToProfile(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) => ProfilePage()));
  }
  navigateToSignIn(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) => SignIn()));
  }
  navigateToHomeScreen(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) => MyHomePage()));
  }
  void toastMessage(String message) {
    Fluttertoast.showToast(
        msg: message,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.TOP,
        timeInSecForIosWeb: 1,
        fontSize: 16.0
    );
  }
}


