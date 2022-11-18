import 'package:basic_flutter/model/post.dart';
import 'package:basic_flutter/widget/post_card.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class DashboardView extends StatefulWidget {
  const DashboardView({super.key});

  @override
  State<DashboardView> createState() => _DashboardViewState();
}

class _DashboardViewState extends State<DashboardView> {
  late Future<List<Posts>> futurePosts;

// https://api.banghasan.com/quran/format/json/acak
  Future<List<Posts>> fetchPosts() async {
    final response = await http.get(
      Uri.parse("https://jsonplaceholder.typicode.com/posts"),
      headers: {"Accept": "aaplication/json"},
    );

    print(response.statusCode);
    print(response.body);

    if (response.statusCode == 200) {
      var getPostData = json.decode(response.body) as List;
      var listPosts = getPostData.map((i) => Posts.fromJson(i)).toList();
      return listPosts;
    } else {
      throw Exception('Failed to load Posts');
    }
  }

  @override
  void initState() {
    super.initState();
    futurePosts = fetchPosts();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: FutureBuilder(
          future: futurePosts,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return ListView.separated(
                itemBuilder: ((context, index) {
                  var post = (snapshot.data as List<Posts>)[index];
                  return Column(
                    children: [
                      PostCard(
                        posts: Posts(
                            id: post.id, title: post.title, body: post.body),
                      ),
                      const SizedBox(
                        height: 20,
                      )
                    ],
                  );
                }),
                separatorBuilder: (context, index) => const Divider(),
                itemCount: (snapshot.data as List<Posts>).length,
              );
            } else if (snapshot.hasError) {
              return Text('${snapshot.error}');
            } else {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
          },
        ),
      ),
    );
  }
}
