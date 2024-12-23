import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Category {
  final String name;
  final IconData icon; // Thay đổi kiểu `icon` thành IconData

  Category({
    required this.name,
    required this.icon,
  });
}

final List<Category> categories = [
  Category(name: "Khoa học", icon: Icons.science),
  Category(name: "Công nghệ", icon: Icons.computer),
  Category(name: "Xã hội", icon: Icons.group),
  Category(name: "Học phí & Học bổng", icon: Icons.monetization_on),
  Category(name: "Hỏi đáp", icon: Icons.question_answer),
];
