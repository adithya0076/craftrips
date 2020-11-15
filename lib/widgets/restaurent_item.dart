
import 'package:flutter/material.dart';

class RestaurentItem extends StatelessWidget {
   final String id;
  final  String title;
   final String  imageUrl;
   final String address;


  RestaurentItem({
     this.id,
     this.title,
    this.imageUrl,
     this.address,

  });

//  void selectMeal(BuildContext context) {
//     Navigator.of(context)
//         .pushNamed(
//       MealDetailScreen.routeName,
//       arguments: id,
//     )
//         .then((result) {
//           if(result != null){
//       print(result);
//         }
//     });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      //onTap: () => selectMeal(context),
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
                    imageUrl,
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
                     title,
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
                      address,
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
  }
}
