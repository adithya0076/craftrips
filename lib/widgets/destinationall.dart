import 'package:flutter/material.dart';
import 'package:Craftrips/models/destination_model.dart';

import 'package:Craftrips/screens/restaurent_screen.dart';

class DestinatonSeeAll extends StatefulWidget {
  @override
  _DestinatonSeeAllState createState() => _DestinatonSeeAllState();
}

class _DestinatonSeeAllState extends State<DestinatonSeeAll> {

void selectMeal(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) =>
            RestaurentScreen(),
      ),
    );
  }





  @override
  Widget build(BuildContext context) {
    return Scaffold(
	    extendBodyBehindAppBar: true,
	 appBar: AppBar(
        title: Text('Destinations',
		style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w400,
            color: Colors.white,
            fontFamily: "Roboto",
          ),
		),
      ),
     body: Column(
        children: <Widget>[
          SizedBox(height: 10),
          Expanded(
            child: ListView.builder(
              itemBuilder: (BuildContext ctx, int index) {
                Destination destination = destinations[index];
                return InkWell(
      onTap: () => selectMeal(context),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        elevation: 4,
        margin: EdgeInsets.all(10),
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                  ),
                  child: Image.asset(
                    destination.imageUrl,
                    height: 250,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  bottom: 20,
                  right: 10,
                  child: Container(
                    width: 300,
                    color: Colors.black54,
                    padding: EdgeInsets.symmetric(
                      vertical: 5,
                      horizontal: 20,
                    ),
                    child: Text(
                      destination.city,
                      style: TextStyle(
                        fontSize: 26,
                        color: Colors.white,
                        fontFamily: 'RobotoCondensed',
                        fontWeight: FontWeight.w300,
                      ),
                      softWrap: true,
                      overflow: TextOverflow.fade,
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Icon(Icons.location_on),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Text(
                        destination.country,
                        style: TextStyle(
                          fontSize: 20,
                          fontFamily: 'RobotoCondensed',
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
              },
              itemCount: destinations.length,
            ),
          ),
        ],
      ),
    );
  }
}