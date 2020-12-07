import 'package:Craftrips/models/restaurent_model.dart';
import 'package:Craftrips/widgets/restaurent_item.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class RestaurentScreen extends StatelessWidget {
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
           extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: Text(
          'Nearby Restaurents',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w400,
            color: Colors.white,
            fontFamily: "Roboto",
          ),
        ),
        
       // backgroundColor: Color(0x44000000),
	//	 backgroundColor: Colors.green,
        elevation: 0,
      ),
      body: Column(
        children: <Widget>[
        //  SizedBox(height: 0),
          Expanded(
            child: ListView.builder(
              itemBuilder: (BuildContext ctx, int index) {
                Restaurent restaurent = restaurents[index];
                return RestaurentItem(
                  id: restaurent.id,
                  title: restaurent.title,
                  imageUrl: restaurent.imageUrl,
                  address: restaurent.address,
                  description: restaurent.description,
                );
              },
              itemCount: restaurents.length,
            ),
          ),
        ],
      ),
    );
  }
}
