import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:weather_app/data/network.dart';
import 'package:weather_app/data/my_location.dart';

class Loading extends StatefulWidget {
  const Loading({Key? key}) : super(key: key);

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {

  double latitude3 = 0;
  double longitude3 = 0;


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getLocation();

  }



  void getLocation() async{
 MyLocation myLocation = MyLocation();
 await myLocation.getMyCurrentLocation();
 latitude3 = myLocation.latitude2;
 longitude3 = myLocation.longitude2;
 print(latitude3);
 print(longitude3);

 Network network = Network('https://samples.openweathermap.org/data/2.5/weather?'
     'q=London&appid=b1b15e88fa797225412429c1c50c122a1');

 var weatherData = await network.getJsonDate();
 print(weatherData);
  }


  // void fetchData() async {
  //
  //
  //
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: null,
          child: Text('Get my location',
          style: TextStyle(color: Colors.white),
        ),
          style: ElevatedButton.styleFrom(
         primary: Colors.blue,
        ),
      ),
    ),
    );
  }
}
