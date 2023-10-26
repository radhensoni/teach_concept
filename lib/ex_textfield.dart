import 'package:flutter/material.dart';

class EXTextfield extends StatefulWidget {
  const EXTextfield({Key? key}) : super(key: key);

  @override
  State<EXTextfield> createState() => _EXTextfieldState();
}

class _EXTextfieldState extends State<EXTextfield> {
  TextEditingController nameController = TextEditingController();
  String fullName = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text("Example Textfield"),
        ),
        body: Center(
            child: Column(children: <Widget>[
          Container(
              margin: EdgeInsets.all(20),
              child: TextField(
                controller: nameController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Full Name',
                ),
                onChanged: (text) {
                  setState(() {
                    fullName = text;
                    //you can access nameController in its scope to get
                    // the value of text entered as shown below
                    //fullName = nameController.text;
                  });
                },
              )),
          Container(
            margin: EdgeInsets.all(20),
            child: Text(fullName),
          )
        ])));
  }
}
