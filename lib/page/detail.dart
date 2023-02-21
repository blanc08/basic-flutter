import 'package:basic_flutter/model/post.dart';
import 'package:flutter/widgets.dart';

class DetailPage extends StatelessWidget {
  final Posts posts;
  const DetailPage({Key? key, required this.posts}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Text(
          //   'id: ${posts.id}',
          //   style: const TextStyle(fontSize: 12),
          // ),
          Text(
            'Title: ${posts.title}',
            style: const TextStyle(fontSize: 18),
          ),
          // const SizedBox(
          //   height: 20.0,
          // ),
          Text(
            'Body : ${posts.body}',
            style: const TextStyle(fontSize: 12),
          ),
          // Text(posts.body),
        ],
      ),
    );
  }
}
