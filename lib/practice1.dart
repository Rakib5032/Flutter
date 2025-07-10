import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blue,
        title: Text(
          "This is Practice",
          style: TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
                child: Text(
              "Edit Profile",
              style: TextStyle(
                color: Colors.black87,
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            )),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Home"),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text("Profile"),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text("Log Out"),
              onTap: () {},
            ),
          ],
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 200,
              height: 100,
              margin: EdgeInsets.all(16),
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 30),
              decoration: BoxDecoration(
                  color: Colors.amber,
                  border: Border.all(color: Colors.black87, width: 2),
                  // borderRadius: BorderRadius.circular(10),
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(16),
                    bottomLeft: Radius.circular(16),
                  )),
              alignment: Alignment.center,
              child: Text(
                "Hello",
                style: TextStyle(
                  fontSize: 24,
                ),
              ),
            ),
            Center(
              child: Container(
                // width: double.infinity,
                width: 200,
                height: 100,
                decoration: BoxDecoration(
                  color: Colors.green,
                  border: Border.all(color: Colors.black87, width: 2),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(16),
                    bottomRight: Radius.circular(16),
                  ),
                  image: DecorationImage(
                      image: NetworkImage("https://picsum.photos/200/300"),
                      fit: BoxFit.cover),
                ),
                alignment: Alignment.center,
                child: Text(
                  "World",
                  style: TextStyle(
                    color: Colors.black87,
                    fontSize: 32,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.greenAccent,
                      textStyle: TextStyle(
                        fontSize: 32,
                        fontStyle: FontStyle.italic,
                      )),
                  onPressed: () {
                    print("send");
                  },
                  child: Text("Send")),
            ),
            TextButton(onPressed: () {}, child: Text("User")),
            IconButton(onPressed: () {}, icon: Icon(Icons.search)),
            TextField(
              style: TextStyle(
                color: Colors.black87,
              ),
              decoration: InputDecoration(
                fillColor: Colors.blue,
                filled: true,
                suffixIcon: Icon(
                  Icons.email_outlined,
                  color: Colors.white70,
                ),
                label: Text("Email Address"),
                labelStyle: TextStyle(color: Colors.white70, fontSize: 20),
                hintText: "Enter your Email",
                hintStyle: TextStyle(color: Colors.white70, fontSize: 16),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            SizedBox(
              width: 340,
              child: TextField(
                style: TextStyle(
                  color: Colors.black87,
                ),
                decoration: InputDecoration(
                    fillColor: Colors.blue,
                    filled: true,
                    suffixIcon: Icon(
                      Icons.password_outlined,
                      color: Colors.white70,
                    ),
                    label: Text("Password"),
                    labelStyle: TextStyle(
                      color: Colors.white70,
                      fontSize: 20,
                    ),
                    hintText: "Enter your Password",
                    hintStyle: TextStyle(
                      color: Colors.white70,
                      fontSize: 16,
                    )),
              ),
            )
          ],
        ),
      ),
    );
  }
}
