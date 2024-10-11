import 'package:flutter/material.dart';

class Card1 extends StatelessWidget {
  final String content;
  const Card1({super.key, required this.content});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      height: 120,
      decoration: BoxDecoration(
        color: Colors.grey,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Center(
        child: Text(content),
      ),
    );
  }
}