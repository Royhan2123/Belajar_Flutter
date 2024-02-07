import 'dart:convert';

import 'package:new_app_with_api/model/article_model.dart';
import 'package:http/http.dart' as http;

class ArticleServices {
  static const String baseUrl = "https://newsapi.org/v2/";
  static const String apiKey = "9f2cac10a80b4b34b173b153166f30d0";
  static const String category = "business";
  static const String country = "us";

  Future<ArticlesResult> topHeadline() async {
    final response = await http.get(
      Uri.parse(
        "{$baseUrl}top-headlines?country=$country&category=$category&apiKey=$apiKey",
      ),
    );
    if (response.statusCode == 200) {
      return ArticlesResult.fromJson(
        jsonDecode(response.body),
      );
    } else {
      throw Exception("Failed to load top headlines");
    }
  }
}
