import 'package:flutter/material.dart';
import 'package:location/location.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  LocationData? locationData;

  Future atualizarGPS() async {
    Location location = Location();

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
                "Lat: 43.....",
                style: TextStyle(fontSize: 24),
              ),
              Text(
                "Long: 18",
                style: TextStyle(fontSize: 24),
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
