import 'package:flutter/material.dart';

class RadioView extends StatelessWidget {
  const RadioView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          children: const <Widget>[
            Text(
              "Radio",
              style: TextStyle(fontSize: 30.0),
            ),
            Padding(padding: EdgeInsets.all(20.0)),
            Icon(
              Icons.radio,
              size: 90.0,
            ),
          ],
        ),
      ),
    );
  }
}
