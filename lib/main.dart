import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:teach_concept/ex_checkbox_listtile.dart';
import 'package:teach_concept/ex_choice_chip.dart';
import 'package:teach_concept/ex_color_animation.dart';
import 'package:teach_concept/ex_container.dart';
import 'package:teach_concept/ex_datatable.dart';
import 'package:teach_concept/ex_dropdown.dart';
import 'package:teach_concept/ex_firebase.dart';
import 'package:teach_concept/ex_gridview.dart';
import 'package:teach_concept/ex_listview.dart';
import 'package:teach_concept/ex_rangeSlider.dart';
import 'package:teach_concept/ex_tabbar.dart';
import 'package:teach_concept/ex_webview.dart';
import 'ex_firebase_read_data.dart';
import 'ex_reorder_listview.dart';
import 'firebase_options.dart';
import 'ex_image.dart';
import 'ex_slider.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(
        title: "Home",
      ),
      // home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // int _counter = 0;

  // void _incrementCounter() {
  //   setState(() {
  //     // This call to setState tells the Flutter framework that something has
  //     // changed in this State, which causes it to rerun the build method below
  //     // so that the display can reflect the updated values. If we changed
  //     // _counter without calling setState(), then the build method would not be
  //     // called again, and so nothing would appear to happen.
  //     _counter++;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: SingleChildScrollView(
        child: Container(
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const EXImage(),
                    ),
                  );
                },
                child: const Text('Image'),
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ExDataTable(),
                    ),
                  );
                },
                child: const Text('Data table'),
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const EXGridView(),
                    ),
                  );
                },
                child: const Text('Grid view'),
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => EXListView(),
                    ),
                  );
                },
                child: const Text('List view'),
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ExSliderWidget(),
                    ),
                  );
                },
                child: const Text('Slider'),
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const EXRangeSliderWidget(),
                    ),
                  );
                },
                child: const Text('Range Slider'),
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => EXWebView(),
                    ),
                  );
                },
                child: const Text('webview'),
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => EXTabbar(),
                    ),
                  );
                },
                child: const Text('Tabbar'),
              ),
              const SizedBox(
                height: 20,
              ),
              TextButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.yellow),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => EXColorAnimation(),
                    ),
                  );
                },
                child: const Text('color animation'),
              ),
              const SizedBox(
                height: 20,
              ),
              OutlinedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ExDropdown(),
                    ),
                  );
                },
                child: const Text('drop down'),
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ExChoiceChip(),
                    ),
                  );
                },
                child: const Text('choice chip'),
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ExCheckboxListtile(),
                    ),
                  );
                },
                child: const Text('checkbox listtile'),
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        // onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
// Future<void> deleteField() {
//   CollectionReference users = FirebaseFirestore.instance.collection('users');
//   return users
//       .doc('QmzP66udNEFJ9ps8TcQK')
//       .update({'roll_no': FieldValue.delete()})
//       .then((value) => print("User's Property Deleted"))
//       .catchError((error) => print("Failed to delete user's property: $error"));
// }
// ElevatedButton(
//   onPressed: () async {
//     await deleteField();
//   },
//   child: const Text('Firebase delete roll number'),
// ),

// ElevatedButton(
//   onPressed: () {
//     Navigator.push(
//       context,
//       MaterialPageRoute(
//         builder: (context) => EXFirebase(),
//       ),
//     );
//   },
//   child: const Text('Firebase add data'),
// ),
// const SizedBox(
//   height: 20,
// ),
// ElevatedButton(
//   onPressed: () {
//     Navigator.push(
//       context,
//       MaterialPageRoute(
//         builder: (context) => EXFirebaseReadData(),
//       ),
//     );
//   },
//   child: const Text('Firebase read data'),
// ),
// const SizedBox(
//   height: 20,
// ),
// ElevatedButton(
//   onPressed: () {
//     Navigator.push(
//       context,
//       MaterialPageRoute(
//         builder: (context) => ReorderList(
//           animationColor: Colors.red,
//           boxBorderColor: Colors.black,
//           boxFillColor: Colors.white,
//           icon: Icon(Icons.reorder),
//           list: [],
//           showDragIcon: true,
//         ),
//       ),
//     );
//   },
//   child: const Text('reorder'),
// ),