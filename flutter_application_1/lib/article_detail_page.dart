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
    return Scaffold(
      appBar: AppBar(
        title: Text(articleModel.title),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Image.network(articleModel.urlToImage),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(articleModel.description),
                  const Divider(
                    color: Colors.grey,
                  ),
                  Text(
                    articleModel.title,
                    style: const TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    ),
                  ),
                  const Divider(
                    color: Colors.grey,
                  ),
                  Text("Date : ${articleModel.publishedAt}"),
                  const SizedBox(
                    height: 10,
                  ),
                  Text("Author : ${articleModel.author}"),
                  const Divider(
                    color: Colors.grey,
                  ),
                  Text(
                    articleModel.content,
                    style: const TextStyle(fontSize: 16),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text(
                      "Read More",
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
