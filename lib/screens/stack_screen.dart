import 'package:flutter/material.dart';

class StackScreen extends StatelessWidget {
  const StackScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: Text("Stack Beispiel"),
      ),
      body: Stack(
        children: [
          Container( // Hintergrund
            width: width,
            height: height,
            color: Color.fromRGBO(100, 70, 12, 0.7),
          ),
          Positioned(
            top:100,
            right: 100,
            child: Container(
              width: 100,
              height: 100,
              color: Colors.yellow,
            ),
          ),
        ],
      ),
    );
  }
}
