import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
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
            title: Text("Hello Bangladesh", style: TextStyle(
              fontSize: 24,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),),
            bottom: TabBar(
                tabs: [
                  Tab(icon: Icon(Icons.directions_bike, size: 50,),),
                  Tab(icon: Icon(Icons.directions_car, size: 50,),),
                  Tab(icon: Icon(Icons.directions_train, size: 50,),),
                ]),
          ),
          drawer: Drawer(
            child: ListView(
              children: [
                DrawerHeader(decoration: BoxDecoration(color: Colors.greenAccent),
                child: Center(
                  child: Text("Drawer", style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 50,
                    color: Colors.red,
                  ),),
                ),
                ),
                ListTile(
                  leading: Icon(Icons.home),
                  title: Text("HOME"),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  leading: Icon(Icons.add),
                  title: Text("Add"),
                  onTap: () {

                  },
                ),
                ListTile(
                  leading: Icon(Icons.email_outlined),
                  title: Text("Email"),
                  onTap: (){

                  },
                )
              ],
            ),
          ),


          body: TabBarView(
              children: [
                Icon(Icons.directions_bike, size: 100,),
                Icon(Icons.directions_car, size: 100,),
                Icon(Icons.directions_train, size: 100,),
              ]),

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

class _onItemTapped {
}