import 'package:flutter/material.dart';
import 'package:beauty_textfield/beauty_textfield.dart';

class SearchScreen extends StatefulWidget {
  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
	title: Text('Find your places !', 
  style: TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w300,
    color: Colors.white,
  ),),
	// flexibleSpace: Image( image: AssetImage('assets/images/mountblue.jpg'), fit: BoxFit.cover,),
	backgroundColor: Colors.transparent,

	),
	
      body:  Container(
             width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/galle.jpg'),
                fit: BoxFit.cover,
              ),
            ),
                   child: Column(
                     children: <Widget> [ 
                       BeautyTextfield(
                          width: double.maxFinite,
                          height: 60,
                          inputType: TextInputType.text,
                          prefixIcon: Icon(Icons.search),
                          placeholder: "Search",
                          onTap: () => {},
                          onSubmitted: (data) => {},
                          
                        ),
                       
                     ]
          ),     
          
          ),
     
    );
  }
}
