import 'package:flutter/material.dart';

class ExampleContainer extends StatefulWidget {
  const ExampleContainer({Key? key}) : super(key: key);

  @override
  State<ExampleContainer> createState() => _ExampleContainerState();
}

class _ExampleContainerState extends State<ExampleContainer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Example Container"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              height: 200,
              width: 200,
              // margin: const EdgeInsets.all(20),
              // padding: const EdgeInsets.all(20),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.blueAccent, width: 5),
                boxShadow: const [
                  BoxShadow(
                      color: Colors.grey,
                      blurRadius: 5,
                      spreadRadius: 1,
                      offset: Offset(4, 4)
                  ),
                ],
                color: Colors.green[200],
              ),
              child: const Text('Container 1'),
            ),

            //align
            // Align(
            //   alignment: Alignment.centerRight,
            //   child: Text("widget"),
            // )
          ],
        ),
      ),
    );
  }
}
