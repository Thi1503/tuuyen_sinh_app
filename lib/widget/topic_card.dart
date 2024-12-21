import 'package:flutter/material.dart';

class TopicCard extends StatelessWidget {
  final String title;
  final String comments;
  final String views;
  final bool highlighted;
  final VoidCallback? onTap; // Function to handle tap event

  const TopicCard({
    Key? key,
    required this.title,
    required this.comments,
    required this.views,
    this.highlighted = false,
    this.onTap, // Optional tap handler
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
          side: BorderSide(color: Colors.red.shade200, width: 1),
        ),
        color: highlighted ? Colors.orange.shade100 : Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                title,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Icon(Icons.comment, size: 16, color: Colors.grey),
                  Text(comments),
                  const Icon(Icons.visibility, size: 16, color: Colors.grey),
                  Text(views),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
