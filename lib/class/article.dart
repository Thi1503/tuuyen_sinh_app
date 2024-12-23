class Article {
  final int id;
  final String tab;
  final String subTab;
  final String subSubTab;
  final String title;
  final String imgURL;
  final String link;
  final String htmlContent;
  final DateTime dateCreated;

  Article({
    required this.id,
    required this.tab,
    required this.subTab,
    required this.subSubTab,
    required this.title,
    required this.imgURL,
    required this.link,
    required this.htmlContent,
    required this.dateCreated,
  });

  factory Article.fromJson(Map<String, dynamic> json) {
    return Article(
      id: json['id'],
      tab: json['tab'],
      subTab: json['subTab'],
      subSubTab: json['subSubTab'],
      title: json['title'],
      imgURL: json['imgURL'],
      link: json['link'],
      htmlContent: json['htmlContent'],
      dateCreated: DateTime.parse(json['dateCreated']),
    );
  }
}