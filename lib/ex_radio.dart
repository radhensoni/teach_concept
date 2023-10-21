import 'package:flutter/material.dart';

class ExRadioWidget extends StatefulWidget {
  const ExRadioWidget({Key? key}) : super(key: key);

  @override
  State<ExRadioWidget> createState() => _ExRadioWidgetState();
}

enum OS { mac, windows, linux }

class _ExRadioWidgetState extends State<ExRadioWidget> {
  OS? _os = OS.mac;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Example Radio"),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            const SizedBox(
              height: 30,
            ),
            const Text('Which Operating System are your currently using?'),
            const SizedBox(
              height: 10,
            ),
            ListTile(
                title: const Text('Mac'),
                leading: Radio<OS>(
                  value: OS.mac,
                  groupValue: _os,
                  onChanged: (OS? value) {
                    setState(() {
                      _os = value;
                    });
                  },
                )),
            ListTile(
                title: const Text('Windows'),
                leading: Radio<OS>(
                  value: OS.windows,
                  groupValue: _os,
                  onChanged: (OS? value) {
                    setState(() {
                      _os = value;
                    });
                  },
                )),
            ListTile(
                title: const Text('Linux'),
                leading: Radio<OS>(
                  value: OS.linux,
                  groupValue: _os,
                  onChanged: (OS? value) {
                    setState(() {
                      _os = value;
                    });
                  },
                )),
          ],
        ),
      ),
    );
  }
}
