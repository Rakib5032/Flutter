import 'dart:ui';

import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    print(size);
    print(size.height);
    print(size.width);
    print(size.aspectRatio);
    print(size.flipped);
    // Orientation orientation = MediaQuery.orientationOf(context);
    // print(orientation);
    List<DisplayFeature> displayFeatures = MediaQuery.displayFeaturesOf(
      context,
    );
    print(displayFeatures);
    print(MediaQuery.devicePixelRatioOf(context));
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.cyan,
        title: Text("Home", style: TextStyle(color: Colors.yellow)),
      ),
      body: Center(
        // child: Text(
        //   orientation == Orientation.portrait ? 'Portrait' : 'Landscape',
        // ),
        child: OrientationBuilder(
          builder: (context, orientation) {
            return Text(
              orientation == Orientation.portrait ? 'Protrait' : 'Landscape',
            );
          },
        ),
      ),
    );
  }
}
