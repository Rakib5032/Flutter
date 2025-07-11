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
      appBar: AppBar(
        title: Text("Theming"),
        backgroundColor: Colors.blue,
        leading: Icon(Icons.person),
        centerTitle: true,
      ),
      body: Column(
        children: [
          TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ProductList()),
              );
            },
            child: Text("Press me"),
          ),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ProductList()),
                );
              },
              child: Text("Press me"),
            ),
          ),
        ],
      ),
    );
  }
}

class ProductList extends StatelessWidget {
  const ProductList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Product List"),
        centerTitle: true,
        backgroundColor: Colors.amberAccent,
      ),
      body: ListView.builder(
        itemCount: 20,
        itemBuilder: (context, index) {
          return ListTile(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      ProductDetails(productName: index.toString()),
                ),
              ).then((value) {
                print(value);
              });
            },
            title: Text(index.toString()),
            subtitle: Text("Product Details"),
          );
        },
      ),
    );
  }
}

class ProductDetails extends StatefulWidget {
  final String productName;
  const ProductDetails({super.key, required this.productName});

  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Product Details")),
      backgroundColor: Colors.cyan,
      body: Column(
        children: [
          TextButton(
            onPressed: () {
              Navigator.pop(context, 'this ${widget.productName}');
            },
            child: Text(
              "Back",
              style: TextStyle(color: Colors.black, fontSize: 24),
            ),
          ),
          Center(
            child: Text(widget.productName, style: TextStyle(fontSize: 32)),
          ),
        ],
      ),
    );
  }
}
