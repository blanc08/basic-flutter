import 'package:basic_flutter/computer_view.dart';
import 'package:basic_flutter/radio_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
      title: 'Navigation',
    ),
  );
}

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  late TabController controller;

  @override
  void initState() {
    controller = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Electronic'),
        bottom: TabBar(
          controller: controller,
          tabs: const <Widget>[
            Tab(
              icon: Icon(Icons.computer),
            ),
            Tab(
              icon: Icon(Icons.radio),
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: controller,
        children: const [
          ComputerView(),
          RadioView(),
        ],
      ),
      bottomNavigationBar: Material(
        color: Colors.blue,
        child: TabBar(
          controller: controller,
          tabs: const <Widget>[
            Tab(
              icon: Icon(Icons.computer),
            ),
            Tab(
              icon: Icon(Icons.radio),
            ),
          ],
        ),
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
