import 'package:flutter/material.dart';

class Post extends StatelessWidget {
  final int? item;
  const Post({super.key, this.item});

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        //name
        Row(
          children: [
            CircleAvatar(
              radius: 25,
              backgroundColor: const Color.fromARGB(255, 85, 32, 8),
              child: Text(
                '',
                style: TextStyle(fontSize: 12, fontFamily: "monospace"),
                ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.0),
              child: Text(
                "Jesus",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w900,
                  color: Colors.black
                ),
              ),
            ),
            Icon(
              Icons.verified_sharp,
              color: Color.fromARGB(255, 0, 149,246),
              size: 16,
              ),

              Spacer(),
              Icon(Icons.more_horiz)
          ],
        ),


        const SizedBox(height: 10),
        //picture
        Image.asset("assets/images/profile.png"),

        //stats(likes, comments, shares)
        const Row(children: [
          Icon(Icons.favorite_border_outlined),
          Text("1.5M"),
          SizedBox(width: 16),

          Icon(Icons.message_rounded),
          Text("18.5K"),
          SizedBox(width: 16),

          Icon(Icons.share_outlined),
          Text("1.5K"),
        ],)


        //Caption
      ],
    );
  }
}