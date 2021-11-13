import 'package:flutter/material.dart';
import 'package:facebook/widgets/widgets.dart';

class FeedScreen extends StatelessWidget {
  const FeedScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey.shade300,
      child: SingleChildScrollView(
        child: Column(
          children: const <Widget>[
            PostCard(),
            SizedBox(height: 8.0,),
            RoomCard(),
            StoryCard(),
            Post(
              userName: 'Mirza Mahboob',
              timeAgo: '5h',
              postText: 'MDIs version is based on their icons quantity, which does not strictly respect semver guide. They do try their best to keep icons in same name between minor releases but name changing may still appear.',
              postImage: 'assets/images/2.jpg',
            ),
            Post(
              userName: 'Mirza Mahboob',
              timeAgo: '5h',
              postText: 'MDIs version is based on their icons quantity, which does not strictly respect semver guide. They do try their best to keep icons in same name between minor releases but name changing may still appear.',
            ),
          ],
        ),
      ),
    );
  }
}
