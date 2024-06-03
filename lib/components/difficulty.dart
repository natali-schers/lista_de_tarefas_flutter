import 'package:flutter/material.dart';

class Difficulty extends StatelessWidget {
  const Difficulty({
    super.key,
    required this.taskDifficulty,
  });

  final int taskDifficulty;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.star,
          size: 15,
          color: taskDifficulty >= 1
              ? Colors.blue
              : Colors.grey,
        ),
        Icon(
          Icons.star,
          size: 15,
          color: taskDifficulty >= 2
              ? Colors.blue
              : Colors.grey,
        ),
        Icon(
          Icons.star,
          size: 15,
          color: taskDifficulty >= 3
              ? Colors.blue
              : Colors.grey,
        ),
        Icon(
          Icons.star,
          size: 15,
          color: taskDifficulty >= 4
              ? Colors.blue
              : Colors.grey,
        ),
        Icon(
          Icons.star,
          size: 15,
          color: taskDifficulty >= 5
              ? Colors.blue
              : Colors.grey,
        ),
      ],
    );
  }
}