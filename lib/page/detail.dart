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
          Text('id: ${posts.id}'),
          Text('Title: ${posts.title}'),
          const SizedBox(
            height: 20.0,
          ),
          const Text('Body : '),
          Text(posts.body),
        ],
      ),
    );
  }
}
