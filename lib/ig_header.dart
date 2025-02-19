import 'package:flutter/material.dart';

class IgHeader extends StatelessWidget {
  const IgHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return (
        Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(
                "assets/images/ig.jpg",
                width: 120.0,
                height: 56,
              ),

              const Row(
                children: [
                  Icon(
                    Icons.favorite_border_outlined,
                    size: 24,
                  ),
                  SizedBox(width: 24),
                  Icon(Icons.message_sharp)
                ],
              )
            ],
          )
    );
  }
}