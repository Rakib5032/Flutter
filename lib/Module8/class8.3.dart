import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Home", style: TextStyle(fontSize: 32))),
      body: Center(
        child: Stack(
          children: [
            Container(height: 100, width: 100, color: Colors.pink),
            Positioned.fill(
              child: Align(
                alignment: Alignment.bottomLeft,
                child: Container(height: 50, width: 50, color: Colors.green),
              ),
            ),
            Positioned(
              right: 0,
              bottom: 0,
              child: Container(height: 30, width: 30, color: Colors.blue),
            ),
          ],
        ),
      ),
    );
  }
}
