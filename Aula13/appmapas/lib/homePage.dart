import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  Future<void> solicitarAcesso() async {
    PermissionStatus status = await Permission.location.request();

    print(status);

    // var status = await Permission.camera.status;
    // if (status.isDenied) {
    //   print("Acesso Bloqueado");
    // } else if (await Permission.location.isRestricted) {
    //   print("Acesso Restrito");
    // }
    // if (status.isGranted) {
    //   print("Acesso Liberado");
    // }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(),
      floatingActionButton: GestureDetector(
        onTap: () {
          solicitarAcesso();
        },
        child: Icon(Icons.location_on),
      ),
    );
  }
}
