import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class PharmacityMaps extends StatelessWidget {
  const PharmacityMaps({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: 300,
      child: GoogleMap(
        onMapCreated: (GoogleMapController controller) {},
        initialCameraPosition: const CameraPosition(
          target: LatLng(10.8105337, 106.6925944),
          zoom: 15,
        ),
        rotateGesturesEnabled: false,
        scrollGesturesEnabled: true,
        tiltGesturesEnabled: false,
        gestureRecognizers: <Factory<OneSequenceGestureRecognizer>>{
          Factory<OneSequenceGestureRecognizer>(() => EagerGestureRecognizer()),
        },
        markers: {
          const Marker(
            markerId: MarkerId('1'),
            position: LatLng(10.8105337, 106.6925944),
            infoWindow: InfoWindow(
              title: 'Pharmacity',
              snippet: 'Pharmacity',
            ),
          ),
          const Marker(
            markerId: MarkerId('2'),
            position: LatLng(10.8088265, 106.6904057),
            infoWindow: InfoWindow(
              title: 'Pharmacity',
              snippet: 'Pharmacity',
            ),
          ),
        },
      ),
    );
  }
}
