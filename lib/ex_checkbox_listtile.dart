import 'package:flutter/material.dart';

class ExCheckboxListtile extends StatefulWidget {
  const ExCheckboxListtile({Key? key}) : super(key: key);

  @override
  State<ExCheckboxListtile> createState() => _ExCheckboxListtileState();
}

class _ExCheckboxListtileState extends State<ExCheckboxListtile> {


// value set to false
  bool _value = false;
  bool _valu = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Example checkboxlisttile"),
      ),
      body: Center(
        child: SizedBox(
          width: 400,
          height: 400,
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.yellow,
                          offset: const Offset(
                            3.0,
                            3.0,
                          ), //Offset
                          blurRadius: 10.0,
                          spreadRadius: 2.0,
                        ), //BoxShadow
                        BoxShadow(
                          color: Colors.white,
                          offset: const Offset(0.0, 0.0),
                          blurRadius: 0.0,
                          spreadRadius: 0.0,
                        ), //BoxShadow
                      ],
                    ), //BoxDecoration
                    child: CheckboxListTile(
                      title: const Text('Title a'),
                      subtitle: const Text('short description'),
                      autofocus: false,
                      activeColor: Colors.green,
                      checkColor: Colors.white,
                      selected: _value,
                      value: _value,
                      onChanged: (bool? value) {
                        setState(() {
                          _value = value!;
                        });
                      },
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.green,
                          offset: const Offset(
                            3.0,
                            3.0,
                          ), //Offset
                          blurRadius: 10.0,
                          spreadRadius: 2.0,
                        ), //BoxShadow
                        BoxShadow(
                          color: Colors.white,
                          offset: const Offset(0.0, 0.0),
                          blurRadius: 0.0,
                          spreadRadius: 0.0,
                        ), //BoxShadow
                      ],
                    ), //BoxDecoration
                    child: CheckboxListTile(
                      title: const Text('Title 2'),
                      subtitle: const Text(
                          'short description'),
                      autofocus: false,
                      isThreeLine: true,
                      activeColor: Colors.green,
                      checkColor: Colors.white,
                      selected: _valu,
                      value: _valu,
                      onChanged: (bool? value) {
                        setState(() {
                          _valu = value!;
                        });
                      },
                    ), //CheckboxListTile
                  ),
                ],
              ), //Container
            ), //Padding
          ), //Center
        ),
      ), //SizedBox
    );
  }
}
//
// import 'package:flutter/material.dart';
//
// // importing material design library
// void main() {
//   runApp(MaterialApp(
//
//     // runApp method
//     home: HomePage(),
//   )); //MaterialApp
// }
//
// // Creating a stateful widget to manage
// // the state of the app
// class HomePage extends StatefulWidget {
//   @override
//   _HomePageState createState() => _HomePageState();
// }
//
// class _HomePageState extends State<HomePage> {
//
// // value set to false
//   bool _value = false;
//   bool _valu = false;
//
//
// // App widget tree
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('GeeksforGeeks'),
//           backgroundColor: Colors.greenAccent[400],
//           leading: IconButton(
//             icon: Icon(Icons.menu),
//             tooltip: 'Menu',
//             onPressed: () {},
//           ), //IconButton
//         ), //AppBar
//         body: Center(
//           child: SizedBox(
//             width: 400,
//             height: 400,
//             child: Center(
//               child: Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: Column(
//                   children: [
//                     Container(
//                       decoration: BoxDecoration(
//                         border: Border.all(color: Colors.greenAccent),
//                         borderRadius: BorderRadius.circular(20),
//                       ), //BoxDecoration
//
//                       /** CheckboxListTile Widget **/
//                       child: CheckboxListTile(
//                         title: const Text('GeeksforGeeks'),
//                         subtitle:
//                         const Text('A computer science portal for geeks. '),
//                         secondary: CircleAvatar(
//                           backgroundImage: NetworkImage(
//                               "https://pbs.twimg.com/profile_images/1304985167476523008/QNHrwL2q_400x400.jpg"), //NetworkImage
//                           radius: 20,
//                         ),
//                         autofocus: false,
//                         activeColor: Colors.green,
//                         checkColor: Colors.white,
//                         selected: _value,
//                         dense: true,
//                         value: _value,
//                         onChanged: (bool value) {
//                           setState(() {
//                             _value = value;
//                           });
//                         },
//                       ), //CheckboxListTile
//                     ),
//                     SizedBox(
//                       height: 30,
//                     ),
//                     Container(
//                       decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(20),
//                         boxShadow: [
//                           BoxShadow(
//                             color: Colors.black,
//                             offset: const Offset(
//                               3.0,
//                               3.0,
//                             ), //Offset
//                             blurRadius: 10.0,
//                             spreadRadius: 2.0,
//                           ), //BoxShadow
//                           BoxShadow(
//                             color: Colors.white,
//                             offset: const Offset(0.0, 0.0),
//                             blurRadius: 0.0,
//                             spreadRadius: 0.0,
//                           ), //BoxShadow
//                         ],
//                       ), //BoxDecoration
//
//                       /** CheckboxListTile Widget **/
//                       child: CheckboxListTile(
//                         title: const Text('GeeksforGeeks'),
//                         subtitle: const Text(
//                             'A computer science portal for geeks. Here you will find articles on all the technologies.'),
//                         secondary: CircleAvatar(
//                           backgroundImage: NetworkImage(
//                               "https://pbs.twimg.com/profile_images/1304985167476523008/QNHrwL2q_400x400.jpg"), //NetworkImage
//                           radius: 20,
//                         ),
//                         autofocus: false,
//                         isThreeLine: true,
//                         activeColor: Colors.green,
//                         checkColor: Colors.white,
//                         selected: _valu,
//                         value: _valu,
//                         onChanged: (bool value) {
//                           setState(() {
//                             _valu = value;
//                           });
//                         },
//                       ), //CheckboxListTile
//                     ),
//                   ],
//                 ), //Container
//               ), //Padding
//             ), //Center
//           ),
//         ), //SizedBox
//       ),
//       debugShowCheckedModeBanner: false, //Scaffold
//     ); //MaterialApp
//   }
// }
