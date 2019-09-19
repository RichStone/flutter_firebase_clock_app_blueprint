import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class SecondRoute extends StatelessWidget {
  String eatingWindowsUser = 'UNCHANGED';
  
  void getData() {
    Firestore.instance
      .collection('eatingWindows')
      .document('wosgyv705DcRJynHuPK0')
      .get()
      .then((DocumentSnapshot ds) {
        eatingWindowsUser = ds['userId'];
        print(eatingWindowsUser);
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Route"),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            getData();
          },
          child: Text('printo!'),
        ),
      ),
    );
  }
}
