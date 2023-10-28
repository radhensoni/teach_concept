import 'package:flutter/material.dart';

class ExSliderWidget extends StatefulWidget {
  const ExSliderWidget({Key? key}) : super(key: key);

  @override
  State<ExSliderWidget> createState() => _ExSliderWidgetState();
}

class _ExSliderWidgetState extends State<ExSliderWidget> {
  double sliderValue = 0.2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Example slider"),
      ),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                Icon(Icons.volume_down),
                Expanded(
                  child: Slider(
                    value: sliderValue,
                    onChanged: (double value) {
                      setState(() {
                        sliderValue = value;
                      });
                    },
                  ),
                ),
              ],
            ),
            Text('Slider Value : ${sliderValue.toStringAsFixed(2)}'),
          ]
      ),
    );
  }
}