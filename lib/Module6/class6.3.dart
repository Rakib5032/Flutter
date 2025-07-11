import 'package:flutter/material.dart';

void main() {
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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Home",
              style: TextStyle(
                fontSize: 32,
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  /// Navigation - Route home -> Route settings
                  /// Navigator
                  /// Navigator.typeOfNavigation(currentLocation, Destination);
                  /// Navigation - Push, Pop(Back), replace, replaceAll, removeUntil
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SettingScreen(),
                    ),
                  );
                },
                child: Text(
                  "Go to setting",
                  style: TextStyle(
                    color: Colors.blue,
                  ),
                )),
            ElevatedButton(
                onPressed: () {
                  /// Navigation - Route home -> Route settings
                  /// Navigator
                  /// Navigator.typeOfNavigation(currentLocation, Destination);
                  /// Navigation - Push, Pop(Back), replace, replaceAll, removeUntil
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => OrderScreen(),
                    ),
                  );
                },
                child: Text(
                  "Go to OrderScreen",
                  style: TextStyle(
                    color: Colors.blue,
                  ),
                )),
          ],
        ),
      ),
    );
  }
}

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Home"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Setting ",
              style: TextStyle(
                fontSize: 32,
              ),
            )
          ],
        ),
      ),
    );
  }
}

class OrderScreen extends StatelessWidget {
  const OrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Order Screen"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Order",
              style: TextStyle(
                fontSize: 32,
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SettingScreen(),
                  ),
                );
              },
              child: Text("Go to Setting"),
            ),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HomeScreen(),
                  ),
                );
              },
              child: Text("Back to Home"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (context) => HomeScreen()),
                  (route) => false,
                );
              },
              child: Text("Go to Home"),
            )
          ],
        ),
      ),
    );
  }
}
