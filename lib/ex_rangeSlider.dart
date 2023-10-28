import 'package:flutter/material.dart';

class EXRangeSliderWidget extends StatefulWidget {
  const EXRangeSliderWidget({Key? key}) : super(key: key);

  @override
  State<EXRangeSliderWidget> createState() => _EXRangeSliderWidgetState();
}

class _EXRangeSliderWidgetState extends State<EXRangeSliderWidget> {
  var selectedRange = const RangeValues(2, 5);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Example range slider"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text("simple range slider"),
          RangeSlider(
            values: selectedRange,
            onChanged: (RangeValues newRange) {
              setState(() {
                selectedRange = newRange;
              });
            },
            min: 1,
            max: 10,
            //set devision
            // divisions: 9,
            // activeColor: Colors.redAccent,
            // inactiveColor: Colors.grey,
          ),
          Text('range start value = ${selectedRange.start.round()}'),
          Text('range end value = ${selectedRange.end.round()}'),
        ],
      ),
    );
  }
}
