import 'package:flutter/material.dart';

class RestaurentDetail extends StatelessWidget {
  final String id;
  final String title;
  final String imageUrl;
  final String address;
  final String description;

  RestaurentDetail(this.id, this.title, this.imageUrl, this.address,this.description);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lime[100],
      appBar: AppBar(
        title: Text(title),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              height: 300,
              width: double.infinity,
              child: Image.asset(
                imageUrl,
                fit: BoxFit.cover,
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 10),
              child: Text(
                title,
                style: TextStyle(
                  fontSize: 24,
                  fontFamily: 'RobotoCondensed',
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
             Container(
               alignment: Alignment.center,
             
              padding: const EdgeInsets.only(left: 20, right: 20),
              margin: EdgeInsets.symmetric(vertical: 10),
              color: Colors.white10,
              child: Text(
                description,
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'RobotoCondensed',
                  fontWeight: FontWeight.w300,
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.delete),
        onPressed: () {
          Navigator.of(context).pop(id);
        },
      ),
    );
  }
}
