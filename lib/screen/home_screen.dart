import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:test_ide/page/home_page.dart';
import 'package:test_ide/page/my_profile_page.dart';
import 'package:test_ide/page/question_and_answer_page.dart';

import '../page/search_page.dart';
import '../page/support_page.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      drawer: _buildDrawer(),
      body: _buildBodyContent(),
      bottomNavigationBar: _buildBottomAppBar(),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      iconTheme: IconThemeData(color: Colors.white),
      backgroundColor: Color(0xFFC41E3A),
      title: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/logohust.png', // Đường dẫn logo
            height: 30, // Chiều cao logo
          ),
          SizedBox(width: 8),
          Text(
            'Tuyển sinh',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
      actions: [
        Stack(
          children: [
            IconButton(
              icon: Icon(Icons.notifications, color: Colors.white),
              onPressed: () {
                // Hành động khi nhấn biểu tượng thông báo
              },
            ),
            Positioned(
              right: 8,
              top: 8,
              child: Container(
                padding: EdgeInsets.all(2),
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(10),
                ),
                constraints: const BoxConstraints(
                  minWidth: 16,
                  minHeight: 16,
                ),
                child: Text(
                  '13', // Số lượng thông báo
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 10,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ],
        ),
      ],
      centerTitle: true,
      elevation: 0, // Xóa bóng của AppBar
    );
  }

  BottomAppBar _buildBottomAppBar() {
    return BottomAppBar(
      color: Color(0xFFC41E3A),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _buildBottomIcon(Icons.home, "Home", 0),
          _buildBottomIcon(Icons.search, "Search", 1),
          _buildBottomIcon(Icons.question_mark, "Q & A", 2),
          _buildBottomIcon(Icons.support, "Support", 3),
          _buildBottomIcon(Icons.person, "My Profile", 4),
        ],
      ),
    );
  }

  Widget _buildBodyContent() {
    switch (_selectedIndex) {
      case 0:
        return HomePage();
      case 1:
        return CenteredSearchPage();
      case 2:
        return QuestionAndAnswerPage();
      case 3:
        return SupportPage();
      case 4:
        return ProfilePage();
      default:
        return Center(child: Text("Page not found", style: TextStyle(fontSize: 24)));
    }
  }

  Widget _buildBottomIcon(IconData icon, String label, int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedIndex = index;
        });
      },
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            size: 30,
            color: _selectedIndex == index ? Colors.greenAccent : Colors.white70,
          ),
          Text(
            label,
            style: TextStyle(
              color: _selectedIndex == index ? Colors.greenAccent : Colors.white70,
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }

  Drawer _buildDrawer() {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          UserAccountsDrawerHeader(
            decoration: BoxDecoration(color: Color(0xFFC41E3A)),
            accountName: Text('Lê Đình Thi', style: TextStyle(fontWeight: FontWeight.bold)),
            accountEmail: Text('Chúc bạn một ngày tốt lành !'),
            currentAccountPicture: CircleAvatar(
              backgroundColor: Colors.white,
              child: Icon(Icons.person, size: 50, color: Colors.blue.shade700),
            ),
          ),

          ListTile(
            title: Text(
              "Home",
              style: TextStyle(fontWeight: FontWeight.bold, color: Colors.teal),
            ),
            leading: Icon(Icons.home, color: Colors.teal),
            onTap: () {
              // Xử lý khi người dùng nhấn vào nút
              // Ví dụ: Chuyển hướng hoặc thực hiện một hành động
            },
          ),
          _buildExpansionTile(
            title: 'Hướng nghiệp',
            icon: Icons.work,
            children: [
              _buildSubItem('Đăng ký trải nghiệm khối Tiểu học -THCS'),
              _buildSubItem('Đăng ký trải nghiệm khối THPT'),
            ],
          ),
          _buildExpansionTile(
            title: 'Tuyển sinh Đại học',
            icon: Icons.school,
            children: [
              _buildSubItem('Thông tin chung'),
              _buildSubItem('Chương trình đào tạo đại học'),
              _buildSubItem('Xét tuyển tài năng'),
              _buildSubItem('Kỳ thi đánh giá tư duy'),
              _buildSubItem('Xác thực chứng chỉ ngoại ngữ'),
              _buildSubItem('Điểm chuẩn các năm'),
            ],
          ),
          _buildExpansionTile(
            title: 'Tuyển sinh sau Đại học',
            icon: Icons.school_outlined,
            children: [
              _buildSubItem('Tuyển sinh Kỹ sư chuyên sâu'),
              _buildSubItem('Equivalence and Recognition'),
              _buildSubItem('Education Visa'),
            ],
          ),
          _buildExpansionTile(
            title: 'International Admissions',
            icon: Icons.public,
            children: [
              _buildSubItem('Overview'),
            ],
          ),
          _buildExpansionTile(
            title: 'Học phí & Học bổng',
            icon: Icons.monetization_on_rounded,
            children: [
              _buildSubItem('Overview'),
            ],
          ),
          ListTile(
            title: Text(
              "Hỏi đáp",
              style: TextStyle(fontWeight: FontWeight.bold, color: Colors.teal),
            ),
            leading: Icon(Icons.question_answer, color: Colors.teal),
            onTap: () {
              // Xử lý khi người dùng nhấn vào nút
              // Ví dụ: Chuyển hướng hoặc thực hiện một hành động
            },
          ),
          _buildExpansionTile(
            title: 'Liên hệ',
            icon: Icons.contact_mail,
            children: [
              _buildSubItem('Overview'),
            ],
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.support_agent),
            title: Text('Hỗ trợ'),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Cài đặt'),
            onTap: () {},
          ),
          Divider(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                  icon: Icon(FontAwesomeIcons.facebook, color: Colors.blue),
                  onPressed: () {
                    // Hành động khi nhấn Facebook
                  },
                ),
                IconButton(
                  icon: Icon(FontAwesomeIcons.youtube, color: Colors.red),
                  onPressed: () {
                    // Hành động khi nhấn Twitter
                  },
                ),
                IconButton(
                  icon: Icon(FontAwesomeIcons.instagram, color: Colors.purple),
                  onPressed: () {
                    // Hành động khi nhấn Instagram
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildExpansionTile({
    required String title,
    IconData? icon, // Đặt icon là tùy chọn bằng cách sử dụng `IconData?`
    required List<Widget> children,
  }) {
    return Theme(
      data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
      child: ExpansionTile(
        title: Text(
          title,
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.teal),
        ),
        leading: icon != null ? Icon(icon, color: Colors.teal) : null, // Chỉ hiển thị icon nếu nó không phải là null
        children: children,
      ),
    );
  }


  Widget _buildSubItem(String text) {
    return ListTile(
      title: Text(
        text,
        style: TextStyle(fontSize: 14, color: Colors.black87),
      ),
      onTap: () {
        // Add action here if needed
      },
      contentPadding: EdgeInsets.only(left: 32.0),
    );
  }
}
