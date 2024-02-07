class ArticlesResult {
 ArticlesResult({
   required this.status,
   required this.totalResults,
   required this.articles,
 });
 
 final String status;
 final int totalResults;
 final List<ArticleModel> articles;
 
 factory ArticlesResult.fromJson(Map<String, dynamic> json) => ArticlesResult(
      status: json["status"],
      totalResults: json["totalResults"],
      articles: List<ArticleModel>.from((json["articles"] as List)
          .map((x) => ArticleModel.fromJson(x))
          .where((article) =>
              article.author != null &&
              article.urlToImage != null &&
              article.publishedAt != null &&
              article.content != null)),
    );
}
 
class ArticleModel {
 ArticleModel({
   required this.author,
   required this.title,
   required this.description,
   required this.url,
   required this.urlToImage,
   required this.publishedAt,
   required this.content,
 });
 
 String? author;
 String title;
 String? description;
 String url;
 String? urlToImage;
 DateTime? publishedAt;
 String? content;
 
 factory ArticleModel.fromJson(Map<String, dynamic> json) => ArticleModel(
       author: json["author"],
       title: json["title"],
       description: json["description"],
       url: json["url"],
       urlToImage: json["urlToImage"],
       publishedAt: DateTime.parse(json["publishedAt"]),
       content: json["content"],
     );
}