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

        const SizedBox(
          height: 10,
        ),

        //picture
        Image.asset("assets/images/ronaldo1.jpg"),

        //stats(likes, comments, shares)

        Row(
          children: [
            
            //like
            const Icon(Icons.favorite_border_outlined),
            const Text(
              "5.4M",
              style: TextStyle(fontWeight: FontWeight.w600),
              ),
              

              const SizedBox(
                width: 16.0
                ),

            //comments
            Image.asset("assets/icons/comment.png", height: 50, width: 50),
            const Text(
              "36.9k",
              style: TextStyle(fontWeight: FontWeight.w600),
              ),


              const SizedBox(
                width: 16.0
                ),

            // Share
            Image.asset("assets/icons/share.png", height: 50, width:50),
            const Text(
              "25.7k"
              ),
          ],
        )

        //Caption
      ],
    );
  }
}
