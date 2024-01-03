import 'package:flutter/material.dart';

class CommunityScreen extends StatefulWidget {
  @override
  _CommunityScreenState createState() => _CommunityScreenState();
}

class _CommunityScreenState extends State<CommunityScreen> {
  List<Post> communityPosts = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Community'),
      ),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          // Community Feed
          _buildCommunityFeed(),

          // Create Post Button
          ElevatedButton(
            onPressed: () {
              // Show a dialog to enter post content
              _showCreatePostDialog();
            },
            child: Text('Create Post'),
          ),
        ],
      ),
    );
  }

  Widget _buildCommunityFeed() {
    return Column(
      children: communityPosts.map((post) {
        return _buildCommunityPost(post);
      }).toList(),
    );
  }

  Widget _buildCommunityPost(Post post) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            leading: CircleAvatar(
              // No background image
            ),
            title: Text(post.username),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(post.content),
          ),
          ButtonBar(
            alignment: MainAxisAlignment.start,
            children: [
              IconButton(
                icon: Icon(Icons.thumb_up),
                onPressed: () {
                  // Implement like functionality
                  _likePost(post);
                },
              ),
              Text('${post.likes}'),
              IconButton(
                icon: Icon(Icons.comment),
                onPressed: () {
                  // Implement comment functionality
                  _commentOnPost(post);
                },
              ),
              Text('${post.comments}'),
            ],
          ),
        ],
      ),
    );
  }

  void _showCreatePostDialog() {
    TextEditingController _postContentController = TextEditingController();

    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('Create a New Post'),
          content: TextField(
            controller: _postContentController,
            maxLines: 4,
            decoration: InputDecoration(
              hintText: 'Enter your post content...',
            ),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context); // Close the dialog
              },
              child: Text('Cancel'),
            ),
            ElevatedButton(
              onPressed: () {
                // Add the new post with user-entered content to the list
                _addPostLocally(_postContentController.text);
                Navigator.pop(context); // Close the dialog
              },
              child: Text('Post'),
            ),
          ],
        );
      },
    );
  }

  void _addPostLocally(String content) {
    // Dummy data for the new post
    Post newPost = Post(
      username: 'NewUser',
      content: content,
      likes: 0,
      comments: 0,
    );

    // Add the new post to the list
    setState(() {
      communityPosts.add(newPost);
    });
  }

  void _likePost(Post post) {
    // Implement logic to handle liking a post locally
    setState(() {
      post.likes += 1;
    });
  }

  void _commentOnPost(Post post) {
    // Implement logic to handle commenting on a post locally
    setState(() {
      post.comments += 1;
    });
  }
}

class Post {
  final String username;
  final String content;
  int likes;
  int comments;

  Post({
    required this.username,
    required this.content,
    required this.likes,
    required this.comments,
  });
}
