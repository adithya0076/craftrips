import 'package:flutter/material.dart';

class RestaurentScreen extends StatelessWidget {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          SizedBox(
            height: 40,
          ),
          Padding(
            padding: EdgeInsets.only(left: 20.0, right: 120.0),
            child: Text('Restaurents',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w300,
              color: Colors.red[300],
            ),
         
        ),
         
          ),
           Expanded(
                    child: ListView(
             children: <Widget>[
               Card(
                 elevation: 5,
                 shape: RoundedRectangleBorder(
                   borderRadius: BorderRadius.circular(10),
                 ),
                 child: ListTile(
                   leading: Image.asset('assets/images/murano.jpg'),
                   title: Text('Dinemore'),
                   subtitle: Text('Kandy,SriLanka'),
                   trailing: Icon(Icons.restaurant),
                   onTap: () {},
                  
                 ),
               ),
               Divider(),
               Card(
                    elevation: 5,
                 shape: RoundedRectangleBorder(
                   borderRadius: BorderRadius.circular(10),
                   ),
                 child: ListTile(
                    leading: Image.asset('assets/images/mountblue.jpg'),
                   title: Text('Hill top'),
                   subtitle: Text('Kandy,SriLanka'),
                   trailing: Icon(Icons.restaurant),
                   onTap: () {},
                 ),
               ),
             ],
           ),
         ),
            
           
          ],
      ),
    );
  }
}
