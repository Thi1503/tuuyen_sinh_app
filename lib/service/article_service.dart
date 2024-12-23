import 'dart:convert';
import 'package:http/http.dart' as http;

import '../class/article.dart';


class ArticleService {
  final String baseUrl = "http://192.168.1.6:8080/articles";

  // Lấy tất cả bài viết
  Future<List<Article>> getAllArticles() async {
    final response = await http.get(Uri.parse(baseUrl));
    if (response.statusCode == 200) {
      List<dynamic> data = json.decode(response.body);
      return data.map((json) => Article.fromJson(json)).toList();
    } else {
      throw Exception("Failed to load articles");
    }
  }

  // Lấy bài viết theo ID
  Future<Article> getArticleById(int id) async {
    final response = await http.get(Uri.parse('$baseUrl/$id'));
    if (response.statusCode == 200) {
      return Article.fromJson(json.decode(response.body));
    } else {
      throw Exception("Failed to load article with ID $id");
    }
  }

  // Lấy bài viết theo tab
  Future<List<Article>> getArticlesByTab(String tab) async {
    final response = await http.get(Uri.parse('$baseUrl/by-tab?tab=$tab'));
    if (response.statusCode == 200) {
      List<dynamic> data = json.decode(response.body);
      return data.map((json) => Article.fromJson(json)).toList();
    } else {
      throw Exception("Failed to load articles by tab");
    }
  }

  // Lấy 5 bài viết gần đây nhất theo tab
  Future<List<Article>> getRecentArticlesByTab(String tab) async {
    final response =
    await http.get(Uri.parse('$baseUrl/recent-by-tab?tab=$tab'));
    if (response.statusCode == 200) {
      List<dynamic> data = json.decode(response.body);
      return data.map((json) => Article.fromJson(json)).toList();
    } else {
      throw Exception("Failed to load recent articles by tab");
    }
  }

  // Lấy bài viết theo subTab
  Future<List<Article>> getArticlesBySubTab(String subTab) async {
    final response = await http.get(Uri.parse('$baseUrl/by-sub-tab?subTab=$subTab'));
    if (response.statusCode == 200) {
      List<dynamic> data = json.decode(response.body);
      return data.map((json) => Article.fromJson(json)).toList();
    } else {
      throw Exception("Failed to load articles by subTab");
    }
  }

  // Lấy 5 bài viết gần đây nhất
  Future<List<Article>> getRecentArticles() async {
    final response = await http.get(Uri.parse('$baseUrl/recent-articles'));
    if (response.statusCode == 200) {
      List<dynamic> data = json.decode(response.body);
      return data.map((json) => Article.fromJson(json)).toList();
    } else {
      throw Exception("Failed to load recent articles");
    }
  }

  // Tìm kiếm bài viết theo từ khóa
  Future<List<Article>> searchArticles(String keyword) async {
    final response =
    await http.get(Uri.parse('$baseUrl/search?keyword=$keyword'));
    if (response.statusCode == 200) {
      List<dynamic> data = json.decode(response.body);
      return data.map((json) => Article.fromJson(json)).toList();
    } else {
      throw Exception("Failed to search articles");
    }
  }
}
