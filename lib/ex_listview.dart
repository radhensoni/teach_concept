import 'package:flutter/material.dart';

class EXListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Example Listview"),
      ),
      body: ListView(
        children: <Widget>[
          Container(
            height: 50,
            color: Colors.lime[800],
            child: const Center(
              child: Text('lime color with 800 shade'),
            ),
          ),
          Container(
            height: 50,
            color: Colors.lime[600],
            child: const Center(
              child: Text('lime color with 600 shade'),
            ),
          ),
          Container(
            height: 50,
            color: Colors.lime[400],
            child: const Center(
              child: Text('lime color with 400 shade'),
            ),
          ),
          Container(
            height: 50,
            color: Colors.lime[200],
            child: const Center(
              child: Text('lime color with 200 shade'),
            ),
          ),
          ListTile(
            leading: Icon(Icons.settings),
            tileColor: Colors.lime,
            title: Text('lime color without shade'),
            trailing: Icon(Icons.chevron_right),
          ),
        ],
      ),
    );
  }
}
