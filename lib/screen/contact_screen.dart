import 'package:flutter/material.dart';

class ContactScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ContactUsScreen();
  }
}

class ContactUsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cách thức liên hệ',style: TextStyle(color: Colors.white),),
        backgroundColor: Color(0xFFC41E3A),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context); // Quay lại màn hình trước đó
          },
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Logo và tên công ty
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/banner_01.jpg', // Thay 'banner_01.jpg' bằng tên file logo của bạn
                  height: 50,
                ),
              ],
            ),
            SizedBox(height: 16),
            Text(
              'Tuyển sinh Đại học Bách Khoa Hà Nội',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.blue),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 8),
            Text(
              'Thông tin giới thiệu.....',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 14),
            ),
            SizedBox(height: 20),

            // Thông tin liên hệ với hành động nhấn nhưng không thực hiện gì
            _buildContactItem(
              icon: Icons.email,
              title: 'Email',
              content: 'tuyensinh@hust.edu.vn',
              onTap: () {}, // Không có hành động gì khi nhấn
            ),
            _buildContactItem(
              icon: Icons.location_on,
              title: 'Main Office',
              content:
              'Ban Tuyển sinh-Hướng Nghiệp - Phòng 101, Tòa nhà C1B',
              onTap: () {}, // Không có hành động gì khi nhấn
            ),

            _buildContactItem(
              icon: Icons.phone,
              title: 'Phone',
              content: '(+84) 2438683408',
              onTap: () {}, // Không có hành động gì khi nhấn
            ),

            _buildContactItem(
              icon: Icons.facebook,
              title: 'Facebook',
              content: 'Tuyển sinh Đại học Bách khoa Hà Nội ',
              onTap: () {}, // Không có hành động gì khi nhấn
            ),
          ],
        ),
      ),
    );
  }

  // Widget hiển thị từng mục liên hệ có thể nhấn nhưng không có hành động
  Widget _buildContactItem({
    required IconData icon,
    required String title,
    required String content,
    required VoidCallback onTap,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: InkWell(
        onTap: onTap,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(icon, size: 30, color: Colors.black54),
            SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 4),
                  Text(
                    content,
                    style: TextStyle(fontSize: 14),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
