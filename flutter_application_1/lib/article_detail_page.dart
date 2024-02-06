import 'package:flutter/material.dart';
import 'package:flutter_application_1/model/article_model.dart';

class ArticleDetailPage extends StatelessWidget {
  static const routName = "/article_detail";

  final ArticleModel articleModel;
  const ArticleDetailPage({
    required this.articleModel,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
