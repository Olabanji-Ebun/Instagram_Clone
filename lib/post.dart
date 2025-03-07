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

              SizedBox(
                width: 10,
              ),

              Container(
                width: 5,
                height: 5,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.black,
                ),
              ),

              SizedBox(
                width: 4,
              ),

              Text(
                "following"
              ),

              Spacer(),
              Icon(Icons.more_horiz)
          ],
        ),

        const SizedBox(
          height: 10,
        ),

        GestureDetector(
          onDoubleTap: () {
            setState(() {
              numOfLikes = 1;
              isLiked = true;
            });
          },
          child: Image.asset("assets/images/ronaldo1.jpg"),
        ),

        //picture
        

        //stats(likes, comments, shares)

        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                children: [

                  //like
                  isLiked
                  ?GestureDetector(
                    onTap: () => {
                      setState(() {
                        isLiked = !isLiked;
                        numOfLikes = 0;
                      })
                    },
                    child: const Icon(Icons.favorite,color: Color.fromARGB(255, 255, 17, 0),),
                  )

                  :GestureDetector(
                    onTap: () => {
                      setState(() {
                        isLiked = !isLiked;
                        numOfLikes = 1;
                      })
                    },
                    child: const Icon(Icons.favorite_border_outlined),
                  ),

                  Text(
                    numOfLikes.toString(),
                    style: const TextStyle(fontWeight: FontWeight.w600),
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
                    "25.7k",
                    style: TextStyle(fontWeight: FontWeight.w600),
                    ),

                  Spacer(),
                  Image.asset(
                    "assets/icons/save.png",
                    height: 50,
                    width: 50,
                  ),
                ],
              ),

              Row(
                children: [
                  Image.asset(
                    "assets/images/three.jpg",
                    height: 35,
                    width: 35,
                  ),
                  Text(
                    "Liked by ",
                    style: TextStyle(fontSize: 15),
                  ),
                  Text(
                    "fawas_01 ",
                    style: TextStyle(fontSize: 15),
                  ),
                  Text(
                    "and ",
                    style: TextStyle(fontSize: 15),
                  ),
                  Text(
                    "14,657,063 others",
                    style: TextStyle(fontSize: 15),
                  ),
                ],
              ),

              //Caption
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "cristiano",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w900
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 3.0),
                    child: Icon(
                      Icons.verified_sharp,
                      color: Color.fromARGB(255, 0, 149, 246),
                      size: 14,
                    ),
                  ),
                  Text(
                    "Thank you all for the amazing birthday wishes",
                    style: TextStyle(fontWeight: FontWeight.w600),
                  )
                ],
              ),
              Row(
                children: [
                  Text(
                    "View all 146,433 comments",
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    "Add a comment ",
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),

                  Spacer(),
                  Icon(
                    Icons.emoji_emotions,
                    color: Colors.grey,
                    size: 15,
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    "Feburary 5",
                    style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.w500,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: double.infinity,
                  height: 0.3,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
