import 'package:flutter/material.dart';

class ExDropdown extends StatefulWidget {
  const ExDropdown({Key? key}) : super(key: key);

  @override
  State<ExDropdown> createState() => _ExDropdownState();
}

class _ExDropdownState extends State<ExDropdown> {
  // Initial Selected Value
  String dropdownvalue = 'Item 1';

  // List of items in our dropdown menu
  var items = [
    'Item 1',
    'Item 2',
    'Item 3',
    'Item 4',
    'Item 5',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Example Dropdown"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            DropdownButton(
              // Initial Value
              value: dropdownvalue,
              icon: const Icon(Icons.keyboard_arrow_down),
              // Array list of items
              items: items.map((String items) {
                return DropdownMenuItem (
                  value: items,
                  child: Text(items),
                );
              }).toList(),
              onChanged: (String? newValue) {
                setState(() {
                  dropdownvalue = newValue!;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
