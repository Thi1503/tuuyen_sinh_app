import 'dart:async';
import 'package:flutter/material.dart';
import 'package:test_ide/widget/custom_container.dart';
import '../class/category.dart';
import '../class/class_new_article.dart';
import '../widget/category_card.dart';
import '../widget/inkwellCard.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late PageController _pageController;
  int _currentPage = 0;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: _currentPage);

    Timer.periodic(Duration(seconds: 5), (Timer timer) {
      if (_currentPage < newsArticles.length - 1) {
        _currentPage++;
      } else {
        _currentPage = 0;
      }

      _pageController.animateToPage(
        _currentPage,
        duration: Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    });
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.only(top: 10, bottom: 5),
        child: Column(
          children: [
            // Banner section
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.2,
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  PageView.builder(
                    controller: _pageController,
                    itemCount: newsArticles.length,
                    onPageChanged: (index) {
                      setState(() {
                        _currentPage = index;
                      });
                    },
                    itemBuilder: (context, index) {
                      final article = newsArticles[index];
                      return GestureDetector(
                        onTap: () {
                          showDialog(
                            context: context,
                            builder: (context) => AlertDialog(
                              title: Text(article.title),
                              content: Text(article.description),
                              actions: [
                                TextButton(
                                  onPressed: () => Navigator.of(context).pop(),
                                  child: Text('Close'),
                                ),
                              ],
                            ),
                          );
                        },
                        child: ClipRRect(
                          child: Stack(
                            children: [
                              Image.asset(
                                article.imageUrl,
                                width: MediaQuery.of(context).size.width,
                                fit: BoxFit.cover,
                              ),
                              Positioned(
                                bottom: 0,
                                child: Container(
                                  width: MediaQuery.of(context).size.width,
                                  color: Colors.black.withOpacity(0.7),
                                  padding: EdgeInsets.all(10.0),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        article.title,
                                        style: const TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                        ),
                                      ),
                                      const SizedBox(height: 5),
                                      Text(
                                        article.description,
                                        style: const TextStyle(
                                          fontSize: 14,
                                          color: Colors.white,
                                        ),
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),

            // Banner with button section
            Container(
              width: MediaQuery.of(context).size.width * 0.95,
              height: MediaQuery.of(context).size.height * 0.1,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                border: Border.all(
                  color: Colors.black,
                  width: 2.0,
                ),
                image: DecorationImage(
                  image: AssetImage("assets/banner_01.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "KỲ THI ĐÁNH GIÁ TƯ DUY (TSA)",
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                  ElevatedButton.icon(
                    onPressed: () {
                      // Login functionality here
                    },
                    style: ElevatedButton.styleFrom(
                      fixedSize: Size(150, 50),
                      backgroundColor: Colors.transparent,
                      elevation: 0,
                      side: const BorderSide(
                        color: Colors.white,
                        width: 2,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      padding: const EdgeInsets.symmetric(vertical: 12),
                    ),
                    icon: const Icon(
                      Icons.play_arrow,
                      color: Colors.white,
                    ),
                    label: const Text(
                      'Chi tiết',
                      style: TextStyle(fontSize: 16, color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),

            // Highlight section
            const Padding(
              padding: EdgeInsets.all(10.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Điểm nổi bật',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFFC41E3A)),
                ),
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.95,
              height: MediaQuery.of(context).size.height * 0.2,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    GestureDetector(
                        onTap: () {},
                        child: const CustomContainer(
                          imagePath: 'assets/icon_1.png',
                          text:
                          'ĐỘI NGŨ GIẢNG VIÊN CHẤT LƯỢNG CAO GIÀU KINH NGHIỆM',
                        )),
                    const SizedBox(width: 10),
                    GestureDetector(
                        onTap: () {},
                        child: const CustomContainer(
                          imagePath: 'assets/icon_2.png',
                          text:
                          'LĨNH VỰC KỸ THUẬT VÀ CÔNG NGHỆ BÁCH KHOA HÀ NỘI VÀO TOP 400 THẾ GIỚI',
                        )),
                    const SizedBox(width: 10),
                    GestureDetector(
                        onTap: () {},
                        child: const CustomContainer(
                          imagePath: 'assets/icon_3.png',
                          text: 'TOP 801-1000 TRƯỜNG ĐẠI HỌC TỐT NHẤT THẾ GIỚI',
                        )),
                    const SizedBox(width: 10),
                    GestureDetector(
                        onTap: () {},
                        child: const CustomContainer(
                          imagePath: 'assets/icon_4.png',
                          text:
                          'BỐN NHÓM NGÀNH CỦA ĐHBK HÀ NỘI TĂNG HẠNG VÀO TỐP 400 VÀ 500 THẾ GIỚI THEO XẾP HẠNG QS 2020',
                        )),
                    const SizedBox(width: 10),
                    GestureDetector(
                        onTap: () {},
                        child: const CustomContainer(
                          imagePath: 'assets/icon_5.png',
                          text:
                          'CƠ SỞ VẬT CHẤT THUỘC LOẠI TỐT NHẤT TRONG CÁC TRƯỜNG ĐẠI HỌC',
                        )),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 10),

            // Undergraduate Admission Section
            const Padding(
              padding: EdgeInsets.all(10.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Tuyển sinh đại học',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFFC41E3A)),
                ),
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.95,
              height: MediaQuery.of(context).size.height * 0.4,
              child: ListView.builder(
                itemCount: newsArticles.length,
                itemBuilder: (context, index) {
                  final article = newsArticles[index];
                  return InkWellCard(
                    imagePath: article.imageUrl,
                    title: article.title,
                    description: article.description,
                  );
                },
              ),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Align(
                alignment: Alignment.bottomRight,
                child: TextButton(
                  onPressed: () {
                    // Add your action here
                  },
                  child: const Text(
                    '> Xem thêm',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFFC41E3A),
                    ),
                  ),
                ),
              ),
            ),

            // Postgraduate Admission Section
            const Padding(
              padding: EdgeInsets.all(10.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Tuyển sinh sau đại học',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFFC41E3A)),
                ),
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.95,
              height: MediaQuery.of(context).size.height * 0.4,
              child: ListView.builder(
                itemCount: newsArticles.length,
                itemBuilder: (context, index) {
                  final article = newsArticles[index];
                  return InkWellCard(
                    imagePath: article.imageUrl,
                    title: article.title,
                    description: article.description,
                  );
                },
              ),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Align(
                alignment: Alignment.bottomRight,
                child: TextButton(
                  onPressed: () {
                    // Add your action here
                  },
                  child: const Text(
                    '> Xem thêm',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFFC41E3A),
                    ),
                  ),
                ),
              ),
            ),

            // Popular Categories Section
            const Padding(
              padding: EdgeInsets.all(10.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Danh mục',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFFC41E3A)),
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.3,
              child: GridView.builder(
                padding: EdgeInsets.symmetric(horizontal: 10),
                itemCount: categories.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  mainAxisSpacing: 16,
                  crossAxisSpacing: 16,
                  childAspectRatio: 1.0,
                ),
                itemBuilder: (context, index) {
                  final category = categories[index];
                  return CategoryCard(category: category);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Category Model


// Category Card Widget

// Category List

