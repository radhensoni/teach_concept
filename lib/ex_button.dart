import 'package:flutter/material.dart';

class EXRaisedButton extends StatefulWidget {
  const EXRaisedButton({Key? key}) : super(key: key);

  @override
  State<EXRaisedButton> createState() => _EXRaisedButtonState();
}

class _EXRaisedButtonState extends State<EXRaisedButton> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Example button"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const SizedBox(height: 30),
          Text('The following Yes/No are TextButtons. They are aligned to bottom right of the content.'),
          const SizedBox(height: 10),
          //textbutton
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(
                onPressed: () {},
                child: const Text('Yes'),
              ),
              TextButton(
                onPressed: () {},
                child: const Text('No'),
              ),
            ],
          ),
          //elevatedbutton
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.end,
          //   children: [
          //     ElevatedButton(
          //       onPressed: () {},
          //       child: const Text('Yes'),
          //     ),
          //     ElevatedButton(
          //       onPressed: () {},
          //       child: const Text('No'),
          //     ),
          //   ],
          // )
        ],
      )
    );
  }
}
