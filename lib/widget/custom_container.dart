import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  final String imagePath;
  final String text;

  const CustomContainer({
    Key? key,
    required this.imagePath,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 200,
      decoration: BoxDecoration(
        color: Colors.blue[50], // Màu nền của Container
        borderRadius: BorderRadius.all(Radius.circular(20)), // Bo góc 20px
        border: Border.all(color: Colors.black), // Viền màu đen xung quanh
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center, // Căn giữa các thành phần theo trục dọc
        crossAxisAlignment: CrossAxisAlignment.center, // Căn giữa theo trục ngang
        children: [
          Image.asset(
            imagePath,
            width: 80, // Điều chỉnh kích thước hình ảnh
            height: 80,
          ),
          const SizedBox(height: 10), // Điều chỉnh khoảng cách giữa ảnh và Text
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0), // Giúp text không sát viền
            child: Text(
              text,
              textAlign: TextAlign.center, // Căn giữa Text trong Container
              style: TextStyle(
                fontSize: 10, // Kích thước font chữ
                fontWeight: FontWeight.bold, // In đậm chữ cho nổi bật
              ),
            ),
          ),
        ],
      ),
    );
  }
}
