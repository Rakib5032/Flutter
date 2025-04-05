import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
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
        centerTitle: true,
        title: Text(
          "Hello",
          style: TextStyle(
            color: Colors.amber,
          ),
        ),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              child: Text(
                "Nevigation",
                style: TextStyle(
                    // color: Colors.blue,
                    ),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.home),
              title: Text("Home"),
              onTap: () {
                print("Pressed");
              },
            ),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text("Log Out"),
              onTap: () {
                print("Pressed Logout");
              },
            ),
            ListTile(
              leading: Icon(Icons.add),
            )
          ],
        ),
      ),
    );
  }
}
