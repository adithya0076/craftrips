import 'package:flutter/material.dart';

import 'login.dart';
import 'register.dart';

class FirebaseAuthDemo extends StatefulWidget {
  @override
  _FirebaseAuthDemoState createState() => _FirebaseAuthDemoState();
}

class _FirebaseAuthDemoState extends State<FirebaseAuthDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.black54,
          image: DecorationImage(
           colorFilter: ColorFilter.mode(
                Colors.black.withOpacity(0.4), BlendMode.dstATop),
            image: AssetImage('assets/images/cha.jpeg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Container(
              alignment: Alignment.center,
              margin: const EdgeInsets.only(top: 10.0),
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: SizedBox(
                child: Text(
                  'Travel SriLanka',
                  style: TextStyle(
                    color: Colors.white,
          fontWeight: FontWeight.w300,
          fontFamily: "RobotoCondensed",
          fontSize: 40.0,
                  ),
                ),
              ),
            ),
            SizedBox(height: 30.0),
            Container(
              alignment: Alignment.center,
              margin: const EdgeInsets.only(
                top: 10.0,
              ),
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: SizedBox(
                child: Text( 
                  'Already have an account ?',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(
                top: 10.0,
              ),
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: SizedBox(
                width: 300.0,
                height: 50.0,
                child: OutlineButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  child: Text(
                    "Sign in",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  borderSide: BorderSide(style: BorderStyle.solid, width: 1.8),
                  color: Colors.white,
                  highlightedBorderColor: Colors.redAccent,
                  onPressed: () => _pushPage(context, SignIn()),
                ),
              ),
              alignment: Alignment.center,
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              alignment: Alignment.center,
              margin: const EdgeInsets.only(
                top: 10.0,
              ),
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: SizedBox(
                child: Text(
                  'Create an account',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(
                top: 10.0,
              ),
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: SizedBox(
                width: 300.0,
                height: 50.0,
                child: OutlineButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  child: Text(
                    "Register",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  color: Colors.redAccent,
                  borderSide: BorderSide(style: BorderStyle.solid, width: 1.8),
                  highlightedBorderColor: Colors.white,
                  onPressed: () => _pushPage(context, Register()),
                ),
              ),
              alignment: Alignment.center,
            ),
            SizedBox(height: 20.0),
          ],
        ),
      ),
    );
  }

  void _pushPage(BuildContext context, Widget page) {
    Navigator.of(context).push(
      MaterialPageRoute<void>(builder: (_) => page),
    );
  }
}
