import 'package:flutter/material.dart';

class CenteredSearchPage extends StatefulWidget {
  @override
  _CenteredSearchScreenState createState() => _CenteredSearchScreenState();
}

class _CenteredSearchScreenState extends State<CenteredSearchPage> {
  String searchQuery = "";

  void updateSearchQuery(String newQuery) {
    setState(() {
      searchQuery = newQuery;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: EdgeInsets.only(top: 15, right: 10, left: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              TextField(
                onChanged: updateSearchQuery,
                decoration: InputDecoration(
                  hintText: "Tìm kiếm",
                  labelStyle: TextStyle(fontSize: 16, color: Colors.black),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  filled: true,
                  fillColor: Colors.blue[50],
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton.icon(
                onPressed: () {
                  // Handle search action here
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.teal,
                  shadowColor: Colors.black,
                  elevation: 10,
                  fixedSize: const Size(150, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  padding: const EdgeInsets.symmetric(vertical: 12),
                ),
                icon: const Icon(Icons.search, color: Colors.white),
                label: const Text(
                  'Tìm kiếm',
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
              ),
              const SizedBox(height: 30),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Từ khoá nổi bật",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(height: 10),
              Wrap(
                spacing: 8.0,
                runSpacing: 8.0,
                children: [
                  _buildSuggestionButton("Xét tuyển tài năng 2023"),
                  _buildSuggestionButton("Kỳ thi đánh giá tư duy"),
                  _buildSuggestionButton("Đăng ký thi thử bài thi tư duy 2023"),
                  _buildSuggestionButton("Ngành đào tạo đại học"),
                  _buildSuggestionButton("Tuyển sinh Sau đại học"),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSuggestionButton(String label) {
    return OutlinedButton(
      onPressed: () {
        updateSearchQuery(label); // Update search query when button is pressed
      },
      style: OutlinedButton.styleFrom(
        side: BorderSide(color: Colors.white), // Border color for button
        backgroundColor: Colors.white, // Button background color
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      ),
      child: Text(
        label,
        style: TextStyle(color: Colors.black, fontSize: 14),
      ),
    );
  }
}
