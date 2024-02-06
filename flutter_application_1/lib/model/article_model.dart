import 'dart:convert';

class ArticleModel {
  final String author;
  final String title;
  final String description;
  final String url;
  final String urlToImage;
  final String publishedAt;
  final String content;

  const ArticleModel({
    required this.author,
    required this.title,
    required this.description,
    required this.url,
    required this.urlToImage,
    required this.publishedAt,
    required this.content,
  });

  factory ArticleModel.fromJson(Map<String, dynamic> json) => ArticleModel(
        author: json["author"],
        title: json['title'],
        description: json['description'],
        url: json['url'],
        urlToImage: json['urlToImage'],
        publishedAt: json['publishedAt'],
        content: json['content'],
      );
}

List<ArticleModel> parseArticle(String? json) {
  if (json == null) {
    return [];
  }

  final List parsed = jsonDecode(json);
  return parsed.map((json) => ArticleModel.fromJson(json)).toList();
}

List<ArticleModel> list(String? json) {
  if (json == null) {
    return [];
  } else {
    final List tile = jsonDecode(json);
    return tile.map((json) => ArticleModel.fromJson(json)).toList();
  }
}
