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
      body: LayoutBuilder(
        builder: (context, constrains) {
          print(constrains.maxHeight);
          if (constrains.maxWidth > 500) {
            return Center(child: Text("Too big screen"));
          } else {
            return Center(
              child: OrientationBuilder(
                builder: (context, orientation) {
                  return Column(
                    children: [
                      Text(
                        orientation == Orientation.portrait
                            ? 'Portrait'
                            : 'Landscape',
                      ),
                      Wrap(
                        alignment: WrapAlignment.center,
                        crossAxisAlignment: WrapCrossAlignment.start,
                        children: [
                          Text("Helllo how are you"),
                          Text("asdfas asdf asd sadf af asH"),
                          Text(
                            "fasda asd asd f asf afas asd asdsdfa sdfads adfasdf asd  aH afDas SOIFH as IasdfF HDSOIF H",
                          ),
                          Text("HLDf aSfaOas f aasd  ad sOIFa H IF HDSOIF H"),
                        ],
                      ),
                    ],
                  );
                },
              ),
            );
          }
        },
      ),
    );
  }
}
