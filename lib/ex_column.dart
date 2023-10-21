import 'package:flutter/material.dart';

class EXColumn extends StatefulWidget {
  const EXColumn({Key? key}) : super(key: key);

  @override
  State<EXColumn> createState() => _EXColumnState();
}

class _EXColumnState extends State<EXColumn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Example Column"),
      ),
      body: Center(
        child:  Column(
          children: const <Widget>[
            Text('Text 1', style: TextStyle(fontSize: 24.0),),
            Text('Text 2', style: TextStyle(fontSize: 24.0),),
            Icon(
              Icons.beach_access,
              color: Colors.pink,
              size: 30.0,
            ),
            Icon(
              Icons.audiotrack,
              color: Colors.green,
              size: 30.0,
            ),
          ],
        )
      ),
    );
  }
}
