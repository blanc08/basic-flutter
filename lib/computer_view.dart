import 'package:flutter/material.dart';

class ComputerView extends StatelessWidget {
  const ComputerView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const <Widget>[
        ListElement(),
        ListElement(),
        ListElement(),
      ],
    );
  }
}

class ListElement extends StatelessWidget {
  const ListElement({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10.0),
      child: Center(
        child: Column(
          children: const [
            Image(
              image: NetworkImage(
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQV0-GXBHy2-8RkvPl3O2gNur6aeRMBC7wq1zESm2TI&s"),
              width: 200.0,
            ),
            Text(
              "Home",
              style: TextStyle(fontSize: 20.0),
            ),
          ],
        ),
      ),
    );
  }
}
