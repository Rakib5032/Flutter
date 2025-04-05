import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test_project2/bottom_nav.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      showSemanticsDebugger: false,
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Home"),
      ),
      body: Scrollbar(
        thickness: 20,
          radius: Radius.circular(10),
          child: GridView(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2),
            children: [
              Icon(Icons.adb_rounded),
              Icon(Icons.adb_rounded),
              Icon(Icons.adb_rounded),
              Icon(Icons.adb_rounded),
              Icon(Icons.adb_rounded),
              Icon(Icons.adb_rounded),
              Icon(Icons.adb_rounded),
              Icon(Icons.adb_rounded),
              Icon(Icons.adb_rounded),
              Icon(Icons.adb_rounded),
              Icon(Icons.adb_rounded),
            ],
          ),
      ),
    );
  }
}


