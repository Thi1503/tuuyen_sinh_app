import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import '../class/article.dart';
import '../service/article_service.dart';
// Import file chứa model Article

class ArticleListScreen extends StatefulWidget {
  @override
  _ArticleListScreenState createState() => _ArticleListScreenState();
}

class _ArticleListScreenState extends State<ArticleListScreen> {
  final ArticleService articleService = ArticleService();
  late Future<List<Article>> futureArticles;

  @override
  void initState() {
    super.initState();
    // Gọi API khi màn hình được khởi tạo
    futureArticles = articleService.getAllArticles();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Danh sách bài viết'),
      ),
      body: FutureBuilder<List<Article>>(
        future: futureArticles,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            // Hiển thị trạng thái loading
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            // Hiển thị lỗi nếu có
            return Center(child: Text('Lỗi: ${snapshot.error}'));
          } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
            // Hiển thị thông báo nếu không có dữ liệu
            return Center(child: Text('Không có bài viết nào.'));
          } else {
            // Hiển thị danh sách bài viết
            final articles = snapshot.data!;
            return ListView.builder(
              itemCount: articles.length,
              itemBuilder: (context, index) {
                final article = articles[index];
                return Card(
                  child: ListTile(
                    title: Text(article.title),
                    subtitle: Text(article.tab),
                    leading: article.imgURL.isNotEmpty
                        ? Image.network(
                      article.imgURL,
                      width: 50,
                      height: 50,
                      fit: BoxFit.cover,
                    )
                        : Icon(Icons.article),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ArticleDetailScreen(article: article),
                        ),
                      );
                    },
                  ),
                );
              },
            );
          }
        },
      ),
    );
  }
}

class ArticleDetailScreen extends StatefulWidget {
  final Article article;

  const ArticleDetailScreen({Key? key, required this.article}) : super(key: key);

  @override
  State<ArticleDetailScreen> createState() => _ArticleDetailScreenState();
}

class _ArticleDetailScreenState extends State<ArticleDetailScreen> {
  late final WebViewController _controller;

  @override
  void initState() {
    super.initState();
    _controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted) // Cho phép JavaScript
      ..setBackgroundColor(const Color(0xFFFFFFFF)) // Đặt màu nền WebView
      ..setNavigationDelegate(
        NavigationDelegate(
          onWebResourceError: (error) {
            debugPrint("Lỗi khi tải trang: ${error.description}");
          },
        ),
      );
    _loadContent();
  }

  void _loadContent() {
    // Sử dụng nội dung HTML từ bài viết nếu có, nếu không thì dùng HTML mẫu
    String htmlContent = widget.article.htmlContent.isNotEmpty
        ? widget.article.htmlContent
        : """
          <!DOCTYPE html>
          <html lang="en">
          <head>
            <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no">
            <style>
              body {
                font-family: Arial, sans-serif;
                margin: 0;
                padding: 10px;
                line-height: 1.6;
                font-size: 16px;
              }
              img {
                max-width: 100%;
                height: auto;
              }
              .title {
                font-size: 22px;
                font-weight: bold;
                margin-bottom: 10px;
              }
              .date-created {
                font-size: 14px;
                color: gray;
              }
              .description {
                font-size: 16px;
              }
            </style>
          </head>
          <body>
            <div>
              <h1 class="title">Sample Title</h1>
              <p class="date-created">Created on: 2024-12-23</p>
              <div class="description">
                <p>This is a sample HTML content with basic styling and layout.</p>
              </div>
            </div>
          </body>
          </html>
        """;

    _controller.loadHtmlString(htmlContent);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.article.title),
        actions: [
          IconButton(
            icon: const Icon(Icons.refresh),
            onPressed: _loadContent,
          ),
        ],
      ),
      body: WebViewWidget(controller: _controller),
    );
  }
}

