import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Home"), backgroundColor: Colors.blueAccent),
      body: Column(
        children: [
          // AspectRatio(
          //   // Ratio := Width : height
          //   // Ratio := 16/16 (Default)
          //   // 100 : 100
          //   aspectRatio: 16 / 16,
          //   child: Container(
          //     color: Colors.red,
          //     child: Image.network(
          //       'https://www.bigfootdigital.co.uk/wp-content/uploads/2020/07/image-optimisation-scaled.jpg',
          //       fit: BoxFit.fill,
          //     ),
          //   ),
          // ),
          // SizedBox(
          //   width: MediaQuery.of(context).size.width / 10,
          //   height: 100,
          //   child: Container(color: Colors.red),
          // ),
          // Alternate of SizedBox
          // Expanded(
          //   child: Container(
          //     width: MediaQuery.of(context).size.width,
          //     height: MediaQuery.of(context).size.height,
          //     color: Colors.amberAccent,
          //     child: FractionallySizedBox(
          //       widthFactor: 0.5,
          //       heightFactor: 0.5,
          //       child: Container(color: Colors.blue),
          //     ),
          //   ),
          // ),
          // Flexible(
          //   fit: FlexFit.tight,
          //   flex: 2,
          //   child: Container(color: Colors.amberAccent),
          // ),
          // Flexible(
          //   flex: 5,
          //   fit: FlexFit.tight,
          //   child: Container(color: Colors.red),
          // ),
          // Flexible(
          //   fit: FlexFit.tight,
          //   flex: 2,
          //   child: Row(
          //     children: [
          //       Flexible(child: Container(color: Colors.black)),
          //       Flexible(child: Container(color: Colors.brown)),
          //       Flexible(child: Container(color: Colors.blueAccent)),
          //     ],
          //   ),
          // ),
          // Flexible(
          //   flex: 7,
          //   fit: FlexFit.tight,
          //   child: Container(color: Colors.green),
          // ),
          Container(height: 100, width: double.infinity, color: Colors.red),
          Expanded(
            child: Container(
              color: Colors.yellowAccent,
              width: double.infinity,
              alignment: Alignment.center,
              child: SizedBox(
                width: 100,
                height: 20,
                child: FittedBox(child: Text("HEllllloooooooo")),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
