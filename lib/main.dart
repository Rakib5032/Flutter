import 'package:flutter/material.dart';

void main(){
  // takes some widget
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
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

  // const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Hello", style: TextStyle(
          color: Colors.red, fontSize: 32, fontWeight: FontWeight.bold
        ),),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.pink,
                textStyle: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.w400,
                )
              ),
              onLongPress: (){
                print("Long Presss");
              },
                onPressed: (){
              print("Button  Pressed");
            }, child: Text("Send")),
            TextButton(
              style: TextButton.styleFrom(
                foregroundColor: Colors.amber,
                textStyle: TextStyle(
                  fontSize: 24,

                )
              ),
              onLongPress: (){

              },
                onPressed: (){
              print("Resend");
            }, child: Text("Resend")),
            IconButton(
              style: IconButton.styleFrom(
                backgroundColor: Colors.amberAccent,
                foregroundColor: Colors.pink,
              ),
                onPressed: (){

            }, icon: Icon(Icons.add)),
            OutlinedButton(
              style: OutlinedButton.styleFrom(
                backgroundColor: Colors.amberAccent,
              ),
                onPressed: () {
            }, child: Text("OutLine Button")),
            TextField(
              style: TextStyle(
                color: Colors.white,
              ),
              decoration: InputDecoration(
                fillColor: Colors.blue,
                filled: true,
                hintText: "Enter your Name",
                hintStyle: TextStyle(
                  color: Colors.white70,
                ),
                suffixIcon: Icon(Icons.email_outlined, color: Colors.white,),
                label: Text("Email Address"),
                labelStyle: TextStyle(
                  color: Colors.white70,
                )
              ),
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              obscureText: true,
              style: TextStyle(
                color: Colors.white70,
              ),
              decoration: InputDecoration(
                fillColor: Colors.blue,
                filled: true,
                hintText: "Enter your password",
                hintStyle: TextStyle(
                  color: Colors.white70,
                ),
                suffixIcon: Icon(Icons.password_outlined, color: Colors.white70,),
                label: Text("Password"),
                labelStyle: TextStyle(
                  color: Colors.white70,
                )
              ),
            ),
            
          ],
        ),
      ),
    );
  }
}
