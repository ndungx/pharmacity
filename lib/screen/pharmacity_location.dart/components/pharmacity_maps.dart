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
          target: LatLng(10.8324174, 106.6827554),
          zoom: 15,
        ),
        rotateGesturesEnabled: false,
        scrollGesturesEnabled: true,
        tiltGesturesEnabled: false,
        markers: {
          const Marker(
            markerId: MarkerId('1'),
            position: LatLng(10.8324174, 106.6827554),
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
