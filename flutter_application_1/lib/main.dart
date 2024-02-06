import 'package:flutter/material.dart';
import 'package:flutter_application_1/model/article_model.dart';

void main() {
  runApp(const MainActivity());
}

class MainActivity extends StatelessWidget {
  const MainActivity({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "News App",
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: NewListPage.routeName,
      routes: {
        NewListPage.routeName: (context) => const NewListPage(),
      },
    );
  }
}

class NewListPage extends StatelessWidget {
  static const routeName = "/article_list";
  const NewListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future:
            DefaultAssetBundle.of(context).loadString("assets/articles.json"),
        builder: (context, snapshot) {
          final List<ArticleModel> article = parseArticle(snapshot.data);
          return ListView.builder(
            itemCount: article.length,
            itemBuilder: (context, index) {
              return _buildArticleItem(
                context,
                article[index],
              );
            },
          );
        },
      ),
    );
  }

  Widget _buildArticleItem(BuildContext context, ArticleModel articleModel) {
    return ListTile(
      contentPadding:
          const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      leading: Image.network(
        articleModel.urlToImage,
        width: 100,
        errorBuilder: (ctx, error, _) => const Center(
          child: CircularProgressIndicator(
            color: Colors.red,
          ),
        ),
      ),
      title: Text(articleModel.title),
      subtitle: Text(articleModel.description),
    );
  }
}
