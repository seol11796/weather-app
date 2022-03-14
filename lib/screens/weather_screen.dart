
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class WeatherScreen extends StatefulWidget {
  WeatherScreen({this.parseWeatherData});
  final dynamic parseWeatherData;


  @override
  State<WeatherScreen> createState() => _WeatherScreenState();
}

class _WeatherScreenState extends State<WeatherScreen> {

  String cityName ='';
  double temp = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    updateDate(widget.parseWeatherData);
  }

  void updateDate(dynamic weatherData){

  temp = weatherData['main']['temp'];
  cityName = weatherData['name'];

  print(temp);
  print(cityName);
  
  }




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar:true ,
     appBar: AppBar(
      //title:Text(''),
       backgroundColor: Colors.transparent,
       elevation: 0.0,
       leading: IconButton(
         icon: Icon(Icons.near_me),
         onPressed: (){},
         iconSize: 30.0,
       ),
       actions: [
         IconButton(
            icon: Icon(
              Icons.location_searching,
            ),
           onPressed: (){},
           iconSize: 30.0,
         )
       ],
     ),
      body:Container(
        child: Stack(
          children:
          [
            Image.asset('image/background.jpg',
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
            ),
            Container(
              padding: EdgeInsets.all(20.0),
              child: Column(
                children: [
                  SizedBox(
                    height: 150.0,
                  ),
                  Text(
                    'Seoul',
                    style: GoogleFonts.lato(
                      fontSize:35.0,
                      fontWeight: FontWeight.bold,
                      color:Colors.white
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      )
    );
  }
}
