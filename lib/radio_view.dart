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
            Image(
              image: NetworkImage(
                  "http://sc04.alicdn.com/kf/H82fafd9d69ea4d8fa57804b43f797a9ci.jpg"),
              width: 20.0,
            )
          ],
        ),
      ),
    );
  }
}
