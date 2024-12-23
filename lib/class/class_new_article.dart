
class NewsArticle {
  final String title;
  final String description;
  final String imageUrl;
  final String content; // Nội dung chi tiết

  NewsArticle({
    required this.title,
    required this.description,
    required this.imageUrl,
    required this.content, // Bắt buộc phải có nội dung
  });
}

final List<NewsArticle> newsArticles = [
  NewsArticle(
    title: 'News 1',
    description: 'This is a short description for news 1.',
    imageUrl: 'assets/picture_1.jpg',
    content: 'Detailed content for news 1 goes here.',
  ),
  NewsArticle(
    title: 'News 2',
    description: 'This is a short description for news 2.',
    imageUrl: 'assets/picture_2.jpg',
    content: 'Detailed content for news 2 goes here.',
  ),
  NewsArticle(
    title: 'News 3',
    description: 'This is a short description for news 3.',
    imageUrl: 'assets/picture_3.jpg',
    content: 'Detailed content for news 3 goes here.',
  ),
  NewsArticle(
    title: 'News 4',
    description: 'This is a short description for news 4.',
    imageUrl: 'assets/picture_4.jpg',
    content: 'Detailed content for news 4 goes here.',
  ),
];
