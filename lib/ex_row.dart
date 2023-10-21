import 'package:flutter/material.dart';

class EXRow extends StatefulWidget {
  const EXRow({Key? key}) : super(key: key);

  @override
  State<EXRow> createState() => _EXRowState();
}

class _EXRowState extends State<EXRow> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Example Row"),
      ),
      body: Row(
        children: const <Widget>[
          Text('Text 1', style: TextStyle(fontSize: 24.0,), ),
          Icon(
            Icons.beach_access,
            color: Colors.pink,
            size: 90.0,
          ),
          Text('Text 2', style: TextStyle(fontSize: 20.0),),
          Icon(
            Icons.audiotrack,
            color: Colors.green,
            size: 90.0,
          ),
        ],
      ),
    );
  }
}
