import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: HomeScreen());
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Various Widgets"), centerTitle: true),
      body: Column(
        children: [
          Switch.adaptive(value: true, onChanged: (bool value) {}),
          ElevatedButton(
            onPressed: () {
              showDialog(
                barrierDismissible: false,
                context: context,
                builder: (context) {
                  return AlertDialog(
                    title: Text("Alert"),
                    content: Text("You are in danger"),
                    actions: [
                      TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Text("cancel"),
                      ),
                      TextButton(onPressed: () {}, child: Text("Okay")),
                    ],
                  );
                },
              );
            },
            child: Text("Show Dialog"),
          ),
          ElevatedButton(
            onPressed: () {
              showModalBottomSheet(
                isDismissible: false,
                backgroundColor: Colors.grey.shade100,
                barrierColor: Colors.black45,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(18),
                    topRight: Radius.circular(18),
                  ),
                ),
                context: context,
                builder: (context) {
                  return Padding(
                    padding: const EdgeInsets.all(8),
                    child: Column(children: [Center(child: Text("Hello"))]),
                  );
                },
              );
            },
            child: Text("Press"),
          ),
          ElevatedButton(
            onPressed: () {
              showAboutDialog(
                context: context,
                applicationVersion: '10.2.2',
                applicationName: "Piiiii",
                applicationIcon: Icon(Icons.apartment),
              );
            },
            child: Text("Show About"),
          ),
        ],
      ),
    );
  }
}
