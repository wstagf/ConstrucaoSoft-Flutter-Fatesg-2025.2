import 'package:flutter/material.dart';
import 'package:flutter_osm_plugin/flutter_osm_plugin.dart';
import 'package:location/location.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  LocationData locationData = LocationData.fromMap({
    "latitude": 0.0,
    "longitude": 0.0,
  });
  Location location = Location();

  @override
  void initState() {
    super.initState();
    location.onLocationChanged.listen((LocationData currentLocation) {
      setState(() {
        locationData = currentLocation;
      });
    });
  }

  Future atualizarGPS() async {
    bool serviceEnabled;
    PermissionStatus permissionGranted;

    serviceEnabled = await location.serviceEnabled();
    if (!serviceEnabled) {
      serviceEnabled = await location.requestService();
      if (!serviceEnabled) {
        return;
      }
    }

    permissionGranted = await location.hasPermission();
    if (permissionGranted == PermissionStatus.denied) {
      permissionGranted = await location.requestPermission();
      if (permissionGranted != PermissionStatus.granted) {
        return;
      }
    }
    locationData = await location.getLocation();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Text(
                "Minha localização é",
                style: TextStyle(fontSize: 24),
              ),
              Text(
                "Lat: " + locationData!.latitude.toString(),
                style: TextStyle(fontSize: 24),
              ),

              Text(
                "Long: " + locationData!.longitude.toString(),
                style: TextStyle(fontSize: 24),
              ),

              Expanded(
                child: Container(
                  // ignore: sort_child_properties_last
                  child: OSMFlutter(
                    controller: MapController(
                      initPosition: GeoPoint(
                        latitude: locationData.longitude == null
                            ? 0
                            : locationData.longitude!,
                        longitude: locationData.latitude == null
                            ? 0
                            : locationData.latitude!,
                      ),
                      areaLimit: const BoundingBox(
                        east: 10.4922941,
                        north: 47.8084648,
                        south: 45.817995,
                        west: 5.9559113,
                      ),
                    ),
                    osmOption: OSMOption(
                      // staticPoints: [
                      //   StaticPositionGeoPoint(
                      //     "10000",
                      //     MarkerIcon(
                      //       icon: Icon(
                      //         Icons.location_on,
                      //         color: Colors.blue,
                      //         size: 48,
                      //       ),
                      //     ),
                      //     [
                      //       GeoPoint(
                      //         latitude: -49.2537428,
                      //         longitude: -16.6890524,
                      //       ),
                      //     ],
                      //   ),
                      // ],
                      userTrackingOption: const UserTrackingOption(
                        enableTracking: true,
                        unFollowUser: false,
                      ),
                      zoomOption: const ZoomOption(
                        initZoom: 8,
                        minZoomLevel: 3,
                        maxZoomLevel: 19,
                        stepZoom: 1.0,
                      ),
                      userLocationMarker: UserLocationMaker(
                        personMarker: const MarkerIcon(
                          icon: Icon(
                            Icons.location_history_rounded,
                            color: Colors.red,
                            size: 48,
                          ),
                        ),
                        directionArrowMarker: const MarkerIcon(
                          icon: Icon(
                            Icons.location_on,
                            size: 64,
                          ),
                        ),
                      ),
                      roadConfiguration: const RoadOption(
                        roadColor: Colors.yellowAccent,
                      ),
                    ),
                  ),
                  width: double.infinity,
                  color: Colors.red,
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: GestureDetector(
        onTap: () {
          atualizarGPS();
        },
        child: Icon(Icons.location_on),
      ),
    );
  }
}
