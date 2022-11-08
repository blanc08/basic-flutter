import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
      title: 'Navigation',
    ),
  );
}

class Home extends StatelessWidget {
  const Home({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.home),
        title: const Text('Navigation'),
      ),
      body: Center(
        child: IconButton(
            icon: const Icon(
              Icons.headset,
              size: 50,
            ),
            // ignore: avoid_print
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Settings()),
              );
            }),
      ),
    );
  }
}

class Settings extends StatelessWidget {
  const Settings({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back),
        title: const Text('Settings'),
      ),
      body: Center(
        child: IconButton(
            icon: const Icon(
              Icons.settings,
              size: 50,
            ),
            // ignore: avoid_print
            onPressed: () {
              Navigator.pop(context);
            }),
      ),
    );
  }
}
