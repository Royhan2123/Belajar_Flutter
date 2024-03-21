import 'package:flutter/material.dart';
import 'package:new_app_with_api/model/article_model.dart';

class CardArticle extends StatelessWidget {
  final ArticleModel articleModel;
  const CardArticle({
    required this.articleModel,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.blue,
      child: ListTile(
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
        leading: Hero(
          tag: articleModel.urlToImage!,
          child: Image.network(
            articleModel.urlToImage!,
            width: 100,
          ),
        ),
        title: Text(
          articleModel.title,
        ),
        subtitle: Text(articleModel.author ?? ""),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: ArticleDetailPage(),
            ),
          );
        },
      ),
    );
  }
}

class ArticleDetailPage {

}
