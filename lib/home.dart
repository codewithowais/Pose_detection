import 'package:aiapp/camera.dart';
import 'package:aiapp/filter.dart';
import 'package:aiapp/gallery.dart';
import 'package:aiapp/posedetection.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: ElevatedButton(
          child: const Text("pose"),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => ChangeNotifierProvider(
                        create: (_) => PoseDetectionState(),
                        child: PoseDetectionPage(),
                      )),
            );
          },
        ),
        actions: [
          ElevatedButton(
            child: const Text("filter"),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Filter_page()),
              );
            },
          ),
          ElevatedButton(
            child: const Text("Gallery"),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MainPage()),
              );
            },
          )
        ],
      ),
      body: CameraApp(),
    );
  }
}
