import 'package:flutter/material.dart';
import 'package:steckbrief_app/screens/stack_screen.dart';

import 'second_screen.dart';

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
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SecondScreen()),
                  );
                },
                child: Text("Grüss Dich!"),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => StackScreen()),
                  );
                },
                child: Text("Dich auch!"),
              ),
              macheZeile(text: "Alter: 57"),
              macheZeile(text: "Augenfarbe: blau"),
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
