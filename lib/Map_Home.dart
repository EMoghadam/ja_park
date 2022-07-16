import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';
import 'constants.dart';

class Map_Home extends StatefulWidget {
  static String id = "Map_Home";

  Map_Home({Key? key}) : super(key: key);

  @override
  State<Map_Home> createState() => _Map_HomeState();
}

class _Map_HomeState extends State<Map_Home> {
  LocationData? currentLocation;
  BitmapDescriptor userIcon = BitmapDescriptor.defaultMarker;

  void setIcons() {
    BitmapDescriptor.fromAssetImage(ImageConfiguration.empty, 'images/icon.png')
        .then((icon) {
      userIcon = icon;
    });
  }

  void getCurrentLocation() {
    Location location = Location();
    location.getLocation().then((location) {
      currentLocation = location;
    });
    print("location >>>>>>>>>>>>>>>>>>>>>>>>>>>>");
    setState(() {});
    location.onLocationChanged.listen((newLocation) {
      currentLocation = newLocation;
      print("Location :${currentLocation} >>>>>>>>>>>>>>>>>>>>>>>>>>>>");
      setState(() {});
    });
  }

  @override
  void initState() {
    getCurrentLocation();
    setIcons();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Center(
        child: Scaffold(
          body: currentLocation == null
              ? Text("Loading")
              : GoogleMap(
                  onMapCreated: (controller) {
                    controller.setMapStyle(mapStyle);
                  },
                  initialCameraPosition: CameraPosition(
                    target: LatLng(
                      currentLocation!.latitude!,
                      currentLocation!.longitude!,
                    ),
                    zoom: 12,
                  ),
                  markers: {
                    Marker(
                      markerId: MarkerId('currentLocation'),
                      icon: userIcon,
                      position: LatLng(
                        currentLocation!.latitude!,
                        currentLocation!.longitude!,
                      ),
                    ),
                    for (int i = 0; i < parkingLocation.length; i++)
                      Marker(
                        markerId: MarkerId('parking$i'),
                        position: parkingLocation[i],
                      )
                  },
                ),
        ),
      ),
    );
  }
}

/**
 * َ APIKEY : 'AIzaSyCOpkUkivlpEV_S0pbuulYzeGvQmtwV7EM'
 **/
