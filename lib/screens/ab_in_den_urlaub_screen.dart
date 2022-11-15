import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AbInDenUrlaubScreen extends StatelessWidget {
  const AbInDenUrlaubScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String text =
        "Luxuriöses Urlaubserlebnis im edlen landestypischen Ambiente";
    return Scaffold(
      drawer: Drawer(),
      //Icon(Icons.more_vert),

      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 42, 77, 140),
        title: Text("Ab in den Urlaub"),
        actions: [
          //Icon(Icons.more_vert),
          PopupMenuButton(
              // add icon, by default "3 dot" icon
              // icon: Icon(Icons.book)
              itemBuilder: (context) {
            return [
              PopupMenuItem<int>(
                value: 0,
                child: Text("Aktion 0"),
              ),
              PopupMenuItem<int>(
                value: 1,
                child: Text("Aktion 1"),
              ),
              PopupMenuItem<int>(
                value: 2,
                child: Text("Aktion 2"),
              ),
            ];
          }, onSelected: (value) {
            if (value == 0) {
              print("Aktion 0 wurde ausgewählt.");
            } else if (value == 1) {
              print("Aktion 1 wurde ausgewählt.");
            } else if (value == 2) {
              print("Aktion 2 wurde ausgewählt.");
            }
          }),
        ],
      ),
      body: Column(
        children: [
          _searchBar(),
          Stack(
            children: [
              Container(
                height: 360,
                //color: Colors.black12,
                decoration: BoxDecoration(
                    image: DecorationImage(
                  image: AssetImage("assets/hotel.jpg"),
                  fit: BoxFit.cover,
                )),
              ),
              _buildTextBox1(text),
              _buildTextBox2(),
            ],
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/bucht.png"),
                  fit: BoxFit.cover,
                ),
              ),
              //color: Colors.greenAccent,
            ),
          ),
        ],
      ),
    );
  }

  Widget _searchBar() {
    return Container(
      height: 80,
      width: double.infinity,
      color: Color.fromARGB(255, 42, 77, 140),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 30,
          ),
          Container(
            width: 400,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  child: Icon(
                    Icons.search,
                    color: Colors.white,
                    size: 32,
                  ),
                ),
                Text(
                  "Ziel / Region / Hotel",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 1,
            width: 400,
            color: Colors.white,
          ),

        ],
      ),
    );
  }

  Positioned _buildTextBox2() {
    return Positioned(
      bottom: 15,
      right: 0,
      height: 150,
      width: 500,
      child: Container(
        height: 32,
        color: Color.fromARGB(220, 255, 255, 255),
        child: Padding(
          padding: const EdgeInsets.only(left: 16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              _leftBlock(),
              _rightBlock(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _rightBlock() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Container(
          height: 54,
          width: 54,
          decoration: BoxDecoration(
              image: DecorationImage(
            image: AssetImage("assets/koffer.png"),
          )),
        ),
        Text(
          "ab 545 €",
          style: TextStyle(
            color: Color.fromARGB(255, 113, 164, 29),
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }

  Widget _leftBlock() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          width: 350,
          child: Text(
            "5* Design-Wunderwerk an der Marina Rubicón",
            style: TextStyle(
              fontSize: 18,
              color: Color.fromARGB(255, 42, 77, 140),
            ),
          ),
        ),
        Container(
          height: 50,
          width: 280,
          //color: Colors.amber,
          child: Text(
            "1 Woche pro Person im"
            " stylischen 5* THe Hotel"
            " direkt an der Flamiermeile"
            " inklusive Frühstück und FLug",
            style: TextStyle(
              fontSize: 14,
              color: Color.fromARGB(255, 42, 77, 140),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildTextBox1(String text) {
    return Positioned(
      top: 20,
      left: 0,
      height: 32,
      width: 400,
      child: Container(
        height: 32,
        color: Color.fromARGB(255, 42, 77, 140),
        child: Padding(
          padding: const EdgeInsets.only(left: 16.0),
          child: Center(
            child: Text(text.toUpperCase(),
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                )),
          ),
        ),
      ),
    );
  }
}
