import 'package:blocmini/data/datasources/news_remote_datasource.dart';
import 'package:blocmini/domain/entities/article_entity.dart';
import 'package:blocmini/domain/repository/article_repository.dart';

class NewsRepoImpl extends ArticleRepository {
  NewsRemoteDataSource newsRemoteDataSource = NewsRemoteDataSourceImpl();
  @override
  Future<List<ArticleEntity>> fetchNewsFromDataSource() async {
    final article = await newsRemoteDataSource.fetchArticleFromApi();
    return article;
  }
}
