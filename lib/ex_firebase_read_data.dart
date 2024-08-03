import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class EXFirebaseReadData extends StatelessWidget {
  EXFirebaseReadData();

  @override
  Widget build(BuildContext context) {
    CollectionReference users = FirebaseFirestore.instance.collection('users');

    return Scaffold(
      body: Center(
        child: FutureBuilder<DocumentSnapshot>(
          future: users.doc("QmzP66udNEFJ9ps8TcQK").get(),
          builder:
              (BuildContext context, AsyncSnapshot<DocumentSnapshot> snapshot) {

            if (snapshot.hasError) {
              return Text("Something went wrong");
            }

            if (snapshot.hasData && !snapshot.data!.exists) {
              return Text("Document does not exist");
            }

            if (snapshot.connectionState == ConnectionState.done) {
              Map<String, dynamic> data = snapshot.data!.data() as Map<String, dynamic>;
              return Text("Full Name: ${data['full_name']} ${data['roll_no']}");
            }

            return Text("loading");
          },
        ),
      ),
    );
  }
}