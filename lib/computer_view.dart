import 'package:flutter/material.dart';

class ComputerView extends StatelessWidget {
  const ComputerView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          children: const <Widget>[
            Text(
              "Computer",
              style: TextStyle(fontSize: 30.0),
            ),
            Padding(padding: EdgeInsets.all(20.0)),
            Icon(
              Icons.computer,
              size: 90.0,
            ),
          ],
        ),
      ),
    );
  }
}
