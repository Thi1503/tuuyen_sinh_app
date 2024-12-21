

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Category {
  final String name;
  final IconData icon;

  Category({required this.name, required this.icon});
}

final List<Category> categories = [
  Category(name: 'Hướng nghiệp', icon: Icons.computer),
  Category(name: 'Tuyển sinh đại học', icon: Icons.school),
  Category(name: 'Tuyển sinh sau đại học', icon: Icons.school_outlined),
  Category(name: 'International Admissions', icon: Icons.public),
  Category(name: 'Học phí & Học bổng', icon: Icons.monetization_on_rounded),
  Category(name: 'Hỏi đáp', icon: Icons.question_answer),
];