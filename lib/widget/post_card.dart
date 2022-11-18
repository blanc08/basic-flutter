import 'package:basic_flutter/model/post.dart';
import 'package:basic_flutter/page/detail.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class PostCard extends StatelessWidget {
  const PostCard({super.key, required this.posts});
  final Posts posts;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) {
            return DetailPage(posts: posts);
          }),
        );
      },
      child: Container(
        decoration: const BoxDecoration(color: Colors.white),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Text(posts.id.toString()),
            Text(
              posts.title,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
              ),
              softWrap: true,
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              posts.body,
              softWrap: true,
            ),
          ],
        ),
      ),
    );
  }
}
