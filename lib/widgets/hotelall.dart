import 'package:flutter/material.dart';
import 'package:Craftrips/models/destination_model.dart';
import 'package:Craftrips/models/hotel_model.dart';

class HotelAll extends StatefulWidget {
  @override
  _HotelAllState createState() => _HotelAllState();
}

class _HotelAllState extends State<HotelAll> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
	    extendBodyBehindAppBar: true,
	 appBar: AppBar(
        title: Text('Hotels',
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
                Hotel hotel = hotels[index];
                return InkWell(
      onTap: () {},
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
                    hotel.imageUrl,
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
                      hotel.name,
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
                       hotel.address,
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
              itemCount: hotels.length,
            ),
          ),
        ],
      ),
    );
  }
}