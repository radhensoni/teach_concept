import 'package:flutter/material.dart';

class EXImage extends StatefulWidget {
  const EXImage({Key? key}) : super(key: key);

  @override
  State<EXImage> createState() => _EXImageState();
}

class _EXImageState extends State<EXImage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Example Image"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Text(
              "Network Image",
              style: TextStyle(fontSize: 24),
            ),
            Container(
              margin: const EdgeInsets.all(20),
              child: const Image(
                image:
                    NetworkImage('https://www.tutorialkart.com/img/lion.jpg'),
              ),
            ),
            Text(
              "Assets Image",
              style: TextStyle(fontSize: 24),
            ),
            Container(
              margin: const EdgeInsets.all(20),
              child: const Image(
                image:
                    AssetImage("assets/images/feather.jpg"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
