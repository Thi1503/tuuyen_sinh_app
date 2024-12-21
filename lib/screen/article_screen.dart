import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ArticleScreen(),
    );
  }
}

class ArticleScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'STEAMeme Festival 2024: Định hướng tương lại qua hành trình khám phá thế giới 3000',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        backgroundColor: Color(0xFFC41E3A), // Custom background color
        elevation: 8.0, // Increased elevation for a shadow effect
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.share, color: Colors.white),
            onPressed: () {
              // Share functionality here
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Full-width image
            Image.asset(
              'assets/new_1.jpg', // Replace with your asset image
              width: double.infinity,
              height: 200,
              fit: BoxFit.cover, // Ensures the image fills the width without distortion
            ),
            SizedBox(height: 16),
            Text(
              'STEAMeme Festival 2024: Định hướng tương lại qua hành trình khám phá thế giới 3000',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.blueAccent),
            ),
            SizedBox(height: 8),
            Row(
              children: [
                Icon(Icons.calendar_today),
                SizedBox(width: 4),
                Text('02/07/2024'),

                Spacer(),
                Icon(Icons.remove_red_eye),
                SizedBox(width: 4),
                Text('123983'),
              ],
            ),
            SizedBox(height: 16),
            Text(
              'Hơn 4000 trẻ em, thanh thiếu niên, phụ huynh và giáo viên đã cùng nhau bước vào một cuộc du hành đến những vùng đất của năm 3000, nơi cuộc sống được xây dựng trên nền tảng của Khoa học, Công nghệ, Kỹ thuật, Nghệ thuật và Toán học (STEAM).',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              'Sáng ngày 27/10 tại Đại học Bách khoa Hà Nội đã diễn ra Lễ khai mạc chương trình STEAMese Festival 2024, một sự kiện sáng tạo nhằm tái hình dụng giáo dục với các kỹ năng chuyển đổi. Với hơn 8500 lượt đăng ký tham dự, sự kiện quy tụ hàng ngàn trẻ em, thanh thiếu niên, phụ huynh và giáo viên để khám phá sức mạnh của giáo dục STEAM dành cho thế hệ trẻ, đặc biệt là với các bé gái',
              style: TextStyle(fontSize: 16),
            ),


          ],
        ),
      ),
    );
  }
}

class BulletPoint extends StatelessWidget {
  final String text;

  BulletPoint({required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("• ", style: TextStyle(fontSize: 16)),
          Expanded(child: Text(text, style: TextStyle(fontSize: 16))),
        ],
      ),
    );
  }
}
