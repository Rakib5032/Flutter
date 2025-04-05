import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class  MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
        backgroundColor: Colors.blueAccent,
        centerTitle: true,
        title: Text("Home", style: TextStyle(
          fontSize: 32, fontWeight: FontWeight.bold,
        ),),
        iconTheme: IconThemeData(
          color: Colors.red,
        ),
        // bottom: TabBar(
        //   tabs: [
        //     Tab(icon: Icon(Icons.add),),
        //     Tab(icon: Icon(Icons.email_outlined),),
        //     Tab(icon: Icon(Icons.abc),),
        //   ],
        // ),
      ),
      drawer: Drawer(
        backgroundColor: Colors.green,
        child: ListView(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.amber,
              ),
                child: Center(
                  child: Text("Drawer",
                    style: TextStyle(
                      color: Colors.green, fontWeight: FontWeight.bold, fontSize: 32,
                    ),
                  ),
                )
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text("Profile"),
              onTap: (){},
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text("Settings"),
              onTap: (){},
            ),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text("Log Out"),
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(10, 20, 10, 10),
            height: 100, width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.green,
              border: Border.all(color: Colors.pink),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Center(
              child: Text("Hello", style: TextStyle(
                color: Colors.purple, fontSize: 32,
              ),),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(10, 20, 20, 10),
                height: 100, width: 100,
                //color: Colors.pink,
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
                // child: Image.asset("assets/IMG_20180517_183741.jpg"),

                child: Image.network("https://media.licdn.com/dms/image/v2/D4E12AQHzcOycupARqw/article-cover_image-shrink_720_1280/article-cover_image-shrink_720_1280/0/1676289823357?e=2147483647&v=beta&t=OM29XPrYg1t4w8QNkEpASGEZJ-F76qbJe-xiF7QStec"),
              ),
            ],
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.add),
            label: "ADD",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Profile",
          ),
        ],
      ),
    );
  }
}


