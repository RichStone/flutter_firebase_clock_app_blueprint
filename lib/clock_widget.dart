import 'package:flutter/material.dart';
import 'dart:async';
import 'package:intl/intl.dart';

class ClockWidget extends StatefulWidget {
  @override
  _ClockWidgetState createState() => _ClockWidgetState();
}

class _ClockWidgetState extends State<ClockWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        '_timeString',
        style: TextStyle(fontSize: 30),
      ),
    );
  }
}
