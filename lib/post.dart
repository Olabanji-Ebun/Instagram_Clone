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
              backgroundColor: Colors.deepOrange,
              child: Text(
                'GOAT',
                style: TextStyle(fontSize: 12, fontFamily: "monospace"),
                ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.0),
              child: Text(
                "cristiano",
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

        //picture
        Image.asset("assets/images/ronaldo.jpg"),

        //stats(likes, comments, shares)


        //Caption
      ],
    );
  }
}
