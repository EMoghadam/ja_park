import 'package:google_maps_flutter/google_maps_flutter.dart';

List<LatLng> parkingLocation = [
  LatLng(32.6342, 51.6516),
  LatLng(32.6569, 51.6682),
  LatLng(32.6559, 51.6792)
];

String mapStyle = '''[
  {
    "featureType": "poi.business",
    "stylers": [
      {
        "visibility": "off"
      }
    ]
  },
  {
    "featureType": "poi.government",
    "stylers": [
      {
        "visibility": "off"
      }
    ]
  },
  {
    "featureType": "poi.place_of_worship",
    "stylers": [
      {
        "visibility": "off"
      }
    ]
  },
  {
    "featureType": "poi.school",
    "stylers": [
      {
        "visibility": "off"
      }
    ]
  },
  {
    "featureType": "poi.sports_complex",
    "stylers": [
      {
        "visibility": "off"
      }
    ]
  }
]''';
