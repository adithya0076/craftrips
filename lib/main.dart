import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'package:splashscreen/splashscreen.dart';

import 'firebaseAutoDemo.dart';



void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Travel UI',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color(0xFF3EBACE),
        accentColor: Color(0xFFD8ECF1),
        scaffoldBackgroundColor: Color(0xFFF3F5F7),
      ),
      home: Splash2(),
    );
  }
}

class Splash2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      seconds: 6,
      navigateAfterSeconds: new FirebaseAuthDemo(),
      title: new Text(
        'BY SOFTGENIX',
        style: TextStyle(
          fontSize: 10,
          color: Colors.white,
          fontFamily: "Roboto",
          fontWeight: FontWeight.bold,
        ),
        textScaleFactor: 2,
      ),
      
      imageBackground: AssetImage("assets/images/hanthana.jpg"),
      image: new Image.asset('assets/images/craftripsnew.png'),
      loadingText: Text(
        "Loading",
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w300,
        ),
      ),
      photoSize: 100.0,
    
      loaderColor: Colors.white10,
    );
  }
}
