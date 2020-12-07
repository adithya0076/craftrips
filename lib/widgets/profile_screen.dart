import 'dart:io';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import '../firebaseAutoDemo.dart';

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  File _image;
  final picker = ImagePicker();

  Future getImage() async {
    final pickedFile = await picker.getImage(source: ImageSource.camera);

    setState(() {
      if (pickedFile != null) {
        _image = File(pickedFile.path);
      } else {
        print('No image selected.');
      }
    });
  }

  final FirebaseAuth _auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
	    extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.lightBlueAccent.withOpacity(0.7),
		//backgroundColor: Color(0x44000000),
        title: Text(
          'User Profile',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w400,
            color: Colors.white,
            fontFamily: "Roboto",
          ),
        ),
      ),
      body: ListView(
        children: <Widget>[
          Container(
            height: 250,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.lightBlueAccent,Colors.lightBlueAccent[700]],
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                stops: [0.5, 0.9],
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    CircleAvatar(
                      backgroundColor: Colors.white70,         
                      radius: 50.0,
                      child: Image.network("https://i3.sndcdn.com/avatars-yC3pwHuibIrlognX-Zxlvww-t500x500.jpg"),
                      // child: _image == null
                      //     ? Text('No image selected.')
                      //     : Image.file(_image),
                    ),
                  ],
                ),
                GestureDetector(
                  onTap: () => getImage(),
                  child:  Icon(Icons.add_a_photo),
                  
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Adithya Rathnayake',
                  style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            child: ListTile(
              title: Text(
                'Email',
                style: TextStyle(
                  color: Colors.deepPurple,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Text(
                'demo123@gmail.com.com',
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Container(
            child: RaisedButton(
              child: Text(
                "Log out",
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  color: Colors.white,
                  fontFamily: "RobotoCondensed",
                ),
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0),
              ),
              color: Colors.lightBlueAccent,
              onPressed: () {
                _signOut().whenComplete(() {
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                      builder: (context) => FirebaseAuthDemo()));
                });
              },
            ),
          ),
        ],
      ),
    );
  }

  Future _signOut() async {
    await _auth.signOut();
  }
}
