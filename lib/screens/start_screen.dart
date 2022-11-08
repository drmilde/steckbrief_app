import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Jan-Torsten",
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 200,
                  width: 200,
                  child: Image.asset("assets/sheldon.jpg"),
                ),
              ),
              macheZeile(text: "Alter: 57"),
              macheZeile(text: "Augenfarbe: blau"),
              macheZeile(),
              macheZeile(),
              macheZeile(),
              macheZeile(),
              macheZeile(),
              macheZeile(),
              macheZeile(),
            ],
          ),
        ),
      ),
    );
  }

  Widget macheZeile({text: "hallo"}) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 300,
        color: Colors.black12,
        child: Text(
          text,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic,
            color: Colors.amberAccent,
            fontSize: 48.0,
          ),
        ),
      ),
    );
  }
}
