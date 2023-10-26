import 'package:flutter/material.dart';

class EXIcon extends StatefulWidget {
  const EXIcon({Key? key}) : super(key: key);

  @override
  State<EXIcon> createState() => _EXIconState();
}

class _EXIconState extends State<EXIcon> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Example Icon"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          //basic example
          Center(child: Icon(Icons.directions_transit)),
          //change color of icon
          Center(
              child: Icon(
            Icons.directions_transit,
            color: Colors.green,
            size: 70,
          )),
          //  Iconbutton
          Container(
            padding: EdgeInsets.all(50),
            alignment: Alignment.center,
            child: IconButton(
              icon: Icon(
                Icons.directions_transit,
              ),
              iconSize: 50,
              color: Colors.green,
              splashColor: Colors.purple,
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }
}
