import 'package:geolocator/geolocator.dart';


class MyLocation{
  double latitude2 = 0;
  double longitude2 = 0;

  Future<void> getMyCurrentLocation() async{
    LocationPermission permission = await Geolocator.requestPermission();

    try {
      Position position = await Geolocator.
      getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
      latitude2 =  position.latitude;
      longitude2 = position.longitude;
      print(latitude2);
      print(longitude2);
    }
    catch(e){
      print('Thre was a problem with the internet connection');
    }

  }

}







