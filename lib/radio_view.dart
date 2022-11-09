import 'package:flutter/material.dart';

class RadioView extends StatelessWidget {
  final List<String> data;
  const RadioView({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Container(
        child: ListView.builder(
      itemCount: data.length,
      itemBuilder: (context, index) {
        return ListTile(
          leading: const Icon(Icons.widgets),
          title: Text(data[index]),
        );
      },
    ));
  }
}
