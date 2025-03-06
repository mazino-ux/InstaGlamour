import 'package:flutter/material.dart';

class Post extends StatefulWidget {
  final int? item;
  const Post({super.key, this.item});

  @override
  State<Post> createState() => _PostState();
}

class _PostState extends State<Post> {
  int numOfLikes = 0;
  bool isLiked = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Header with user info and more options
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              CircleAvatar(
                radius: 20,
                backgroundColor: const Color.fromARGB(255, 85, 32, 8),
                child: Text(
                  'J',
                  style: TextStyle(fontSize: 12, fontFamily: "monospace", color: Colors.white),
                ),
              ),
              const SizedBox(width: 8),
              const Text(
                "Jesus",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              const SizedBox(width: 4),
              const Icon(
                Icons.verified,
                color: Color.fromARGB(255, 0, 149, 246),
                size: 16,
              ),
              const Spacer(),
              IconButton(
                icon: const Icon(Icons.more_horiz),
                onPressed: () {
                  // Handle more options
                },
              ),
            ],
          ),
        ),

        // Post Image with GestureDetector
        GestureDetector(
          onDoubleTap: () {
            setState(() {
              isLiked = true;
              numOfLikes++;
            });
          },
          child: Image.asset(
            "assets/images/profile.png",
            fit: BoxFit.cover,
            width: double.infinity,
            height: 300,
          ),
        ),

        // Action buttons (Like, Comment, Share, Save)
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              IconButton(
                icon: Icon(isLiked ? Icons.favorite : Icons.favorite_border, color: isLiked ? Colors.red : null),
                onPressed: () {
                  setState(() {
                    isLiked = !isLiked;
                    numOfLikes = isLiked ? numOfLikes + 1 : numOfLikes - 1;
                  });
                },
              ),
              const SizedBox(width: 8),
              IconButton(
                icon: const Icon(Icons.mode_comment_outlined),
                onPressed: () {
                  // Handle comment action
                },
              ),
              const SizedBox(width: 8),
              IconButton(
                icon: const Icon(Icons.send),
                onPressed: () {
                  // Handle share action
                },
              ),
              const Spacer(),
              IconButton(
                icon: const Icon(Icons.bookmark_border),
                onPressed: () {
                  // Handle save action
                },
              ),
            ],
          ),
        ),

        // Likes count
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 8.0),
          child: Text(
            "$numOfLikes likes",
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),

        // Caption
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
          child: RichText(
            text: const TextSpan(
              style: TextStyle(color: Colors.black),
              children: [
                TextSpan(
                  text: "Jesus ",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                TextSpan(
                  text: "This is a sample caption for the post. #Flutter #InstagramUI",
                ),
              ],
            ),
          ),
        ),

        // Comments section
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Text(
            "View all 18.5K comments",
            style: TextStyle(
              fontSize: 14,
              color: Colors.grey[600],
            ),
          ),
        ),

        // Time posted
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
          child: Text(
            "2 hours ago",
            style: TextStyle(
              fontSize: 12,
              color: Colors.grey[600],
            ),
          ),
        ),
      ],
    );
  }
}
