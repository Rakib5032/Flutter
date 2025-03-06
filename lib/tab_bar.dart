import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 3,  // Number of tabs
        child: Scaffold(
          appBar: AppBar(
            title: Text('TabBar Example'),
            bottom: const TabBar(
              tabs: [
                Tab(icon: Icon(Icons.directions_car)),   // First tab
                Tab(icon: Icon(Icons.directions_transit)),  // Second tab
                Tab(icon: Icon(Icons.directions_bike)),   // Third tab
              ],
            ),
          ),
          body: const TabBarView(
            children: [
              Icon(Icons.directions_car),    // Content for the first tab
              Icon(Icons.directions_transit),  // Content for the second tab
              Icon(Icons.directions_bike),    // Content for the third tab
            ],
          ),
        ),
      ),
    );
  }
}
