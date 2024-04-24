import 'package:blocmini/domain/entities/article_entity.dart';

abstract class ArticleRepository {
  Future<List<ArticleEntity>> fetchNewsFromDataSource();
}
