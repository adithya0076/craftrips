import 'package:flutter/material.dart';
import 'package:beauty_textfield/beauty_textfield.dart';

class SearchScreen extends StatefulWidget {
  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
	title: Text('Find your places !', 
  style: TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w300,
    color: Colors.white,
  ),),
	// flexibleSpace: Image( image: AssetImage('assets/images/mountblue.jpg'), fit: BoxFit.cover,),
	backgroundColor: Color(0x44000000),  
  elevation: 0,
	),
	
      body:  Container(
             width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/galle.jpg'),
                colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.7), BlendMode.dstATop),
                fit: BoxFit.cover,
                
              ),
              color: Colors.lightBlueAccent
            ),
                   child: Column(
                     children: <Widget> [
                       SizedBox(height: 80,), 
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
