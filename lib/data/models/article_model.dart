import 'package:blocmini/domain/entities/article_entity.dart';

class ArticleModel extends ArticleEntity {
  final String? sourceId;
  final String? sourceName;

  const ArticleModel({
    String? id,
    String? author,
    String? title,
    String? description,
    String? url,
    String? urlToImage,
    String? publishedAt,
    String? content,
    this.sourceId,
    this.sourceName,
  }) : super(
          author: author,
          title: title,
          description: description,
          url: url,
          urlToImage: urlToImage,
          publishedAt: publishedAt,
          content: content,
        );

  factory ArticleModel.fromJson(Map<String, dynamic> json) {
    return ArticleModel(
      author: json['author'],
      title: json['title'],
      description: json['description'],
      url: json['url'],
      urlToImage: json['urlToImage'],
      publishedAt: json['publishedAt'],
      content: json['content'],
      sourceId: json['source'] != null ? json['source']['id'] : null,
      sourceName: json['source'] != null ? json['source']['name'] : null,
    );
  }
}
