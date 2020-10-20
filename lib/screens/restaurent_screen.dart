import 'package:flutter/material.dart';

class RestaurentScreen extends StatelessWidget {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
	backgroundColor: Colors.blue[300],
	appBar: AppBar(
	title: Text('Restaurents',
	 style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w400,
              color: Colors.white,
			  fontFamily: "Roboto",
            ),
	),
	flexibleSpace: Image( image: AssetImage('assets/images/mountblue.jpg'), fit: BoxFit.cover,),
	backgroundColor: Colors.transparent,
	),
	
      body: Column(
	 
        children: <Widget>[
		
        /*  SizedBox(
            height: 40,
          ),
		  Container(
		  decoration: BoxDecoration( image: DecorationImage(image: AssetImage("assets/images/murano.jpg"), fit: BoxFit.cover),),
         child: Padding(
            padding: EdgeInsets.only(),
            child: Text('Restaurents',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w300,
              color: Colors.black,
            ),
         
        ),*/
         
       //   ),
		 // ),
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
			   Divider(),
               Card(
                    elevation: 5,
                 shape: RoundedRectangleBorder(
                   borderRadius: BorderRadius.circular(10),
                   ),
                 child: ListTile(
                    leading: Image.asset('assets/images/ozo.jpg'),
                   title: Text('Ozo Kandy'),
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
                    leading: Image.asset('assets/images/amayahills.jpg'),
                   title: Text('Amaya hills Kandy'),
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
                    leading: Image.asset('assets/images/horton.jpg'),
                   title: Text('Horton restaurant'),
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
                    leading: Image.asset('assets/images/nuwaraeliya.jpg'),
                   title: Text('Nuwara restaurant'),
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
