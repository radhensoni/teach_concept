// import 'package:flutter/material.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';
//
// class EXFirebase extends StatefulWidget {
//   const EXFirebase({Key? key}) : super(key: key);
//
//   @override
//   State<EXFirebase> createState() => _EXFirebaseState();
// }
//
// class _EXFirebaseState extends State<EXFirebase> {
//   FirebaseFirestore firestore = FirebaseFirestore.instance;
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         children: [],
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

// Import the firebase_core and cloud_firestore plugin
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class EXFirebase extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Create a CollectionReference called users that references the firestore collection
    CollectionReference users = FirebaseFirestore.instance.collection('users');

    Future<void> addUser() {
      // Call the user's CollectionReference to add a new user
      return users
          .add({
        'full_name': "John Doe",
        'company': "Stokes and Sons",
        'roll_no': 42,
      })
          .then((value) => print("User Added"))
          .catchError((error) => print("Failed to add user: $error"));
    }

    return Container(
      color: Colors.white,
      child: TextButton(
        onPressed: addUser,
        child: Text(
          "Add User",
        ),
      ),
    );
  }
}