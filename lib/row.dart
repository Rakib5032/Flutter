import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          backgroundColor: Colors.blue,
          appBar: AppBar(
            backgroundColor: Colors.green,
            centerTitle: true,
            title: const Text(
              "Hello Bangladesh",
              style: TextStyle(
                fontSize: 24,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            bottom: const TabBar(
              tabs: [
                Tab(icon: Icon(Icons.directions_bike, size: 50)),
                Tab(icon: Icon(Icons.directions_car, size: 50)),
                Tab(icon: Icon(Icons.directions_train, size: 50)),
              ],
            ),
          ),
          drawer: Drawer(
            child: ListView(
              children: [
                const DrawerHeader(
                  decoration: BoxDecoration(color: Colors.greenAccent),
                  child: Center(
                    child: Text(
                      "Drawer",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 50,
                        color: Colors.red,
                      ),
                    ),
                  ),
                ),
                ListTile(
                  leading: const Icon(Icons.home),
                  title: const Text("HOME"),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.add),
                  title: const Text("Add"),
                  onTap: () {},
                ),
                ListTile(
                  leading: const Icon(Icons.email_outlined),
                  title: const Text("Email"),
                  onTap: () {},
                )
              ],
            ),
          ),
          body: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Container(
                  margin: const EdgeInsets.all(10),
                  height: 100,
                  width: 150,
                  decoration: BoxDecoration(
                    color: Colors.green,
                    border: Border.all(color: Colors.black, width: 2),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Center(
                    child: Text(
                      "This is a Container",
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(10),
                  height: 100,
                  width: 150,
                  decoration: BoxDecoration(
                    color: Colors.green,
                    border: Border.all(color: Colors.black, width: 2),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Image.network(
                    "https://media.licdn.com/dms/image/v2/D4E12AQHzcOycupARqw/article-cover_image-shrink_720_1280/article-cover_image-shrink_720_1280/0/1676289823357?e=2147483647&v=beta&t=OM29XPrYg1t4w8QNkEpASGEZJ-F76qbJe-xiF7QStec",
                    fit: BoxFit.cover,
                  ),
                ),
                FloatingActionButton(
                  onPressed: () {
                    print("Button Pressed ");
                  },
                  child: const Icon(Icons.add),
                ),
              ],
            ),
          ),
          bottomNavigationBar: BottomNavigationBar(
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: "Home",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.add),
                label: "ADD",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.logout),
                label: "Log Out",
              ),
            ],
          ),
        ),
      ),
    );
  }
}