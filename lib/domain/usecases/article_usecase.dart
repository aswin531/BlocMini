import 'package:blocmini/data/repository/news_repo_implementation.dart';
import 'package:blocmini/domain/entities/article_entity.dart';
import 'package:blocmini/domain/repository/article_repository.dart';

class ArticleUseCases {
  ArticleRepository articleRepository = NewsRepoImpl();
  Future<List<ArticleEntity>> fetchNewsFromDataSource() async {
    final articles = articleRepository.fetchNewsFromDataSource();
    return articles;
  }
}
