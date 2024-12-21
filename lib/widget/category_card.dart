import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../class/category.dart';

class CategoryCard extends StatelessWidget {
  final Category category;

  CategoryCard({required this.category});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: Text(category.name),
            content: Text('You tapped on ${category.name} category.'),
            actions: [
              TextButton(
                onPressed: () => Navigator.of(context).pop(),
                child: Text('Close'),
              ),
            ],
          ),
        );
      },
      child: Container(
        decoration: BoxDecoration(
          color: Color(0xFF0D47A1), // Match the blue color in the image
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 4,
              offset: Offset(0, 4),
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Center(
                child: Icon(category.icon, color: Colors.white, size: 40),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 8),
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color(0xFF26A69A), // Green color for the label
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(12),
                  bottomRight: Radius.circular(12),
                ),
              ),
              child: Text(
                category.name,
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white, fontSize: 14),
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
