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
      theme: ThemeData(
        colorScheme: ColorScheme.dark(
          background: Color.fromARGB(255, 255, 0, 0),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            foregroundColor: Colors.white,
            backgroundColor: Colors.green,
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
            elevation: 5,
            textStyle: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              letterSpacing: 0.6,
              wordSpacing: 0.5,
            ),
          ),
        ),
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
            textStyle: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),
            foregroundColor: Colors.amber,
            backgroundColor: Colors.blueGrey,
          ),
        ),
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.pink,
          elevation: 5,
          shadowColor: Colors.red,
        ),
        textTheme: TextTheme(
          bodyMedium: TextStyle(
            fontSize: 15,
          ),
          bodyLarge: TextStyle(
            fontSize: 22,
          ),
          bodySmall: TextStyle(
            fontSize: 10,
          ),
        ),
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.amberAccent,
          elevation: 5,
          shadowColor: Colors.purple,
        ),
      ),
      themeMode: ThemeMode.dark,
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //backgroundColor: Colors.blue,
        title: Text("Home"),
      ),
      body: Center(
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Hello World"),
            Text("Hello World"),
            Text("Hello World"),
            TextButton(onPressed: () {}, child: Text("Taap here")),
            TextButton(onPressed: () {}, child: Text("Taap here")),
            //ElevatedButton(onPressed: () {}, child: Text("Tap Here")),
          ],
        ),
      ),
    );
  }
}
