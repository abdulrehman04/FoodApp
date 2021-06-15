import 'package:flutter_map/plugin_api.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong/latlong.dart';
import 'package:flutter/material.dart';

class MapScreen extends StatefulWidget {
  final mapController;
  MapScreen({Key key, this.mapController}) : super(key: key);
  @override
  _MapScreenState createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  var center = LatLng(36.1699,115.1398);
  // var mapMarker = Marker(
  //     point: LatLng(33.650, 73.033),
  //     height: 75,
  //     width: 75,
  //     builder: (context) {
  //       return Container(
  //         child: Icon(
  //           Icons.location_on,
  //           size: 50,
  //         ),
  //       );
  //     });

  @override
  Widget build(BuildContext context) {
    return FlutterMap(
      mapController: widget.mapController,
      options: MapOptions(
        zoom: 5,
          onPositionChanged: (pos, bool) {
            print(pos.zoom);
          },
          // onLongPress: (position) {
          //   setState(() {
          //     mapMarker = Marker(
          //         builder: (context) => Icon(
          //               Icons.location_on,
          //               color: Colors.red,
          //               size: 50,
          //             ),
          //         point: LatLng(position.latitude, position.longitude));
          //   });
          // },
          center: center,
          minZoom: 10.0),
      layers: [
        TileLayerOptions(
            urlTemplate:
                "https://api.mapbox.com/styles/v1/zees98/ck87b3z5x103u1ilxegfuy2yj/tiles/256/{z}/{x}/{y}@2x?access_token=pk.eyJ1IjoiemVlczk4IiwiYSI6ImNrODc1d2R1czAzd3YzaXNpNTJqanNvbG8ifQ.Rdesd-o-2Uj6a-ilIq2Z9A",
            additionalOptions: {
              'accessToken':
                  'pk.eyJ1IjoiemVlczk4IiwiYSI6ImNrODc1eWQyaTA0cWczaXFzZnI1dHZnZ3oifQ.dC9UMn123lbXlyOQ0DzFMg',
              'id': 'mapbox.mapbox-streets-v8'
            }),
      ],
    );
  }
}