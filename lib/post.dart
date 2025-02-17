import 'package:flutter/material.dart';

class Post extends StatelessWidget {
  final int? item;
  const Post({super.key, this.item});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: Container(
        width: 300,
        height: 300,
        color: Colors.pink,
        child: Center(
          child: Text(
            item.toString(),
            style: const TextStyle(fontSize: 36),
          ),
        ),
      ),
    );
  }
}
