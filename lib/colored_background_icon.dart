import 'package:flutter/material.dart';

class ColoredBackgroundIcon extends StatelessWidget {
  const ColoredBackgroundIcon({this.color, this.icon});

  final Color color;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    final TextStyle textStyle = Theme.of(context).textTheme.display1;
    return Card(
      color: this.color,
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Icon(this.icon, size: 128.0, color: textStyle.color),
          ],
        ),
      ),
    );
  }
}
