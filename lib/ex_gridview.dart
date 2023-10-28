import 'package:flutter/material.dart';

class EXGridView extends StatefulWidget {
  const EXGridView({Key? key}) : super(key: key);

  @override
  State<EXGridView> createState() => _EXGridViewState();
}

class _EXGridViewState extends State<EXGridView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Example gridview"),
      ),
      body: Center(
        child: GridView(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
          ),
          primary: false,
          padding: const EdgeInsets.all(20),
          children: <Widget>[
            Container(
              padding: const EdgeInsets.all(8),
              color: Colors.orange[200],
              child: const Text("Tile 1"),
            ),
            Container(
              padding: const EdgeInsets.all(8),
              color: Colors.green[200],
              child: const Text("Tile 2"),
            ),
            Container(
              padding: const EdgeInsets.all(8),
              color: Colors.red[200],
              child: const Text("Tile 3"),
            ),
            Container(
              padding: const EdgeInsets.all(8),
              color: Colors.purple[200],
              child: const Text("Tile 4"),
            ),
            Container(
              padding: const EdgeInsets.all(8),
              color: Colors.blueGrey[200],
              child: const Text("Tile 5"),
            ),
            Container(
              padding: const EdgeInsets.all(8),
              color: Colors.yellow[200],
              child: const Text("Tile 6"),
            ),
          ],
        ),
      ),
    );
  }
}
