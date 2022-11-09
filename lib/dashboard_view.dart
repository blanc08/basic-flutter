import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class DashboardView extends StatefulWidget {
  const DashboardView({super.key});

  @override
  State<DashboardView> createState() => _DashboardViewState();
}

class _DashboardViewState extends State<DashboardView> {
  late List dataJson;

// https://api.banghasan.com/quran/format/json/acak
  fetchData() async {
    try {
      http.Response response = await http.get(
        Uri.parse("https://api.banghasan.com/quran/format/json/acak"),
        headers: {"Accept": "aaplication/json"},
      );

      return jsonDecode(response.body);
    } catch (e) {
      print(e);
      return null;
    }
  }

  @override
  void initState() {
    super.initState();
    dataJson = fetchData();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(10.0),
        child: ListView.builder(
          itemCount: dataJson == null ? 0 : dataJson.length,
          itemBuilder: (context, index) {
            return Card(
              child: Text(dataJson[index]['status']),
            );
          },
        ));
  }
}
