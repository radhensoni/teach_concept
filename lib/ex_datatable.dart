import 'package:flutter/material.dart';

class ExDataTable extends StatefulWidget {
  @override
  _ExDataTableState createState() => _ExDataTableState();
}

class _ExDataTableState extends State<ExDataTable> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Example Datatable"),
      ),
      body: ListView(
        children: <Widget>[
          const Center(
            child: Text(
              'Students data',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          DataTable(
            columns: const [
              DataColumn(label: Text('RollNo')),
              DataColumn(label: Text('Name')),
              DataColumn(label: Text('Class')),
            ],
            rows: const [
              DataRow(
                cells: [
                  //first column's value
                  DataCell(Text('22')),
                  //second column's value
                  DataCell(Text('Arya')),
                  //first column's value
                  DataCell(Text('6')),
                ],
              ),
              DataRow(
                cells: [
                  DataCell(Text('12')),
                  DataCell(Text('John')),
                  DataCell(Text('9')),
                ],
              ),
              DataRow(
                cells: [
                  DataCell(Text('42')),
                  DataCell(Text('Tony')),
                  DataCell(Text('8')),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
