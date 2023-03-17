import 'package:flutter/material.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
      
        primarySwatch: Colors.blue,
      ),
      home:  TextFieldExample(),
    );
  }
}

class TextFieldExample extends StatefulWidget {
 @override
 State<TextFieldExample> createState() => _TextFieldExampleState();
}

class _TextFieldExampleState extends State<TextFieldExample>{
  final _controllerlocation = TextEditingController();
  final _controllerdays = TextEditingController();

  String location ='';
  String days ='';


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title : Text ("Solo-Trips"),


      ),
      body:Column(
        children: <Widget>[
          Container( 
             padding: EdgeInsets.all(10.0),
            child:TextField(
              controller: _controllerlocation,
            ),
          ),
           Container(
             padding: EdgeInsets.all(10.0),
            child:TextField(
              controller: _controllerdays,
            ),
          ),
          Container( 
            padding: EdgeInsets.all(10.0),
            child: ElevatedButton(
              onPressed : (){
                setState((){
                  location = _controllerlocation.text;
                  days = _controllerdays.text;
                },);
              },
              
            // color:Colors.blue,
            // textColor:Colors.white,
            child : Text("Generate Iteniary"),
          ),
          ),
          Text(
            "Location mentioned: $location",
            style: TextStyle(
              fontWeight:FontWeight.bold,
              fontSize: 18.0,
              fontFamily: 'Roboto'
            ),
          ),

           Text(
            "Number of days: $days",
            style: TextStyle(
              fontWeight:FontWeight.bold,
              fontSize: 18.0,
              fontFamily: 'Roboto'
            ),
          )
          
        ],
      ),
    );
   

}

}





