import 'package:Craftrips/widgets/destination_carousel.dart';
import 'package:Craftrips/widgets/hotel_carousel.dart';
import 'package:Craftrips/widgets/search_place.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../firebaseAutoDemo.dart';
import 'restaurent_screen.dart';

class HomeScreen extends StatefulWidget {
  final User user;

  const HomeScreen({Key key, this.user}) : super(key: key);
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
 final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

 final FirebaseAuth _auth = FirebaseAuth.instance;

  int _selectedIndex = 0;
  int _currentTab = 0;

  List<IconData> _icons = [
    FontAwesomeIcons.plane,
    FontAwesomeIcons.bed,
    FontAwesomeIcons.walking,
    FontAwesomeIcons.biking,
  ];

  Widget _buildIcon(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedIndex = index;
        });
        print(_selectedIndex);
      },
      child: Container(
        height: 60.0,
        width: 60.0,
        decoration: BoxDecoration(
          color: _selectedIndex == index
              ? Theme.of(context).accentColor
              : Color(0xFFE7EBEE),
          borderRadius: BorderRadius.circular(30.0),
        ),
        child: Icon(
          _icons[index],
          size: 25.0,
          color: _selectedIndex == index
              ? Theme.of(context).primaryColor
              : Color(0xFFB4C1C4),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(vertical: 30.0),
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(left: 20.0, right: 120.0),
              child: Text(
                'What would you like to find ?',
                style: TextStyle(
                  fontSize: 30.0,
                  color: Colors.red[300],
                  fontFamily: "Roboto",
                  fontWeight: FontWeight.w300,
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: _icons
                  .asMap()
                  .entries
                  .map(
                    (MapEntry map) => _buildIcon(map.key),
                  )
                  .toList(),
            ),
            SizedBox(
              height: 20.0,
            ),
            DestinationCarousel(),
            SizedBox(
              height: 20.0,
            ),
            HotelCarousel(),
             Container(
              child: OutlineButton(
                child: Text("LogOut"),
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
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentTab,
        onTap: (int value) {
          setState(() {
            _currentTab = value;
          });
          if (_currentTab == 1) {
            Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => RestaurentScreen()),
            );
          }
           if (_currentTab == 0) {
            Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => SearchScreen()),
            );
          }

        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.search,
              size: 30.0,
              
            ),
         
            title: SizedBox.shrink(),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.restaurant,
              size: 30.0,
            ),
            title: SizedBox.shrink(),
          ),
          BottomNavigationBarItem(
            icon: CircleAvatar(
              radius: 15.0,
              backgroundImage: AssetImage('assets/images/horton.jpg'),
            ),
            title: SizedBox.shrink(),
          ),
        ],
      ),
    );
  }
 

  Future _signOut() async {
    await _auth.signOut();
  }
}