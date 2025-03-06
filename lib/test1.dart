import 'package:flutter/material.dart';
import 'package:test_project2/main.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      appBar: CustomAppBar(),
      body: CustomBody(),
    );
  }
}

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget{
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.purple,
      centerTitle: true,
      title: Text("Hello Rakib", style: TextStyle(
        fontSize: 45,
        fontWeight: FontWeight.bold,
      ),),
      leading: Icon(
        Icons.home,
        color: Colors.amber,
        size: 56,
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}

class CustomBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("Hello Sadia Tomi dao kadia", style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 30,
      ),),
    );
  }
 
}
