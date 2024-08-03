import 'package:flutter/material.dart';

class ExChoiceChip extends StatefulWidget {
  const ExChoiceChip({Key? key}) : super(key: key);

  @override
  State<ExChoiceChip> createState() => _ExChoiceChipState();
}

class _ExChoiceChipState extends State<ExChoiceChip> {
  int? _value = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Example Choice chip"),
      ),
      body: Wrap(
        // list of length 3
        children: List.generate(
          3,
          (int index) {
            // choice chip allow us to
            // set its properties.
            return ChoiceChip(
              padding: EdgeInsets.all(8),
              label: Text('Item $index'),
              // color of selected chip
              selectedColor: Colors.green,
              // selected chip value
              selected: _value == index,
              // onselected method
              onSelected: (bool selected) {
                setState(() {
                  _value = selected ? index : null;
                });
              },
            );
          },
        ).toList(),
      ),
    );
  }
}
