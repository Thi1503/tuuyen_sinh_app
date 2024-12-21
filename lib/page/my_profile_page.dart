import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          // User Info Section
          Container(
            padding: const EdgeInsets.all(16.0),
            decoration: BoxDecoration(
              color: Colors.red.shade50,
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundImage: NetworkImage(
                    'https://via.placeholder.com/150', // Replace with the actual image URL
                  ),
                ),
                const SizedBox(width: 16),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'LÊ ĐÌNH THI',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      'Chúc bạn một ngày tốt lành !',
                      style: TextStyle(
                        color: Colors.black54,
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 16),

          // Menu Section
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Column(
              children: [
                _buildMenuItem(
                  icon: Icons.person,
                  iconColor: Colors.red,
                  title: 'Thông tin tài khoản',
                  onTap: () {},
                ),
                _buildMenuItem(
                  icon: Icons.person_pin_outlined,
                  iconColor: Colors.red,
                  title: 'Hồ sơ thí sinh',
                  onTap: () {},
                ),
                _buildMenuItem(
                  icon: Icons.lock,
                  iconColor: Colors.green,
                  title: 'Đổi mật khẩu',
                  onTap: () {},
                ),
                _buildMenuItem(
                  icon: Icons.location_on,
                  iconColor: Colors.red,
                  title: 'Thông tin nơi ở',
                  onTap: () {},
                ),
                _buildMenuItem(
                  icon: Icons.book,
                  iconColor: Colors.red,
                  title: 'Thí sinh cần biết',
                  onTap: () {},
                ),
                _buildMenuItem(
                  icon: Icons.qr_code,
                  iconColor: Colors.red,
                  title: 'QR thí sinh',
                  onTap: () {},
                ),
                _buildMenuItem(
                  icon: Icons.question_answer,
                  iconColor: Colors.red,
                  title: "Hỏi đáp",
                  onTap: () {},
                ),

              ],
            ),
          ),
          const SizedBox(height: 16),

          // Additional Options Section
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Column(
              children: [
                _buildMenuItem(
                  icon: Icons.logout,
                  iconColor: Colors.green,
                  title: 'Đăng xuất'
                      ,
                  onTap: () {},
                ),

              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildMenuItem({
    required IconData icon,
    required Color iconColor,
    required String title,
    required VoidCallback onTap,
  }) {
    return ListTile(
      leading: Icon(icon, color: iconColor),
      title: Text(title),
      trailing: const Icon(Icons.chevron_right),
      onTap: onTap,
    );
  }
}
