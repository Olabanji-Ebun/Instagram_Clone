import 'package:flutter/material.dart';

class Addpost extends StatelessWidget {
  const Addpost({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          "Add post",
          style: TextStyle(fontSize: 32),
        ),
      ),
    );
  }
}