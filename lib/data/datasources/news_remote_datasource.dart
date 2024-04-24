import 'dart:convert';

import 'package:blocmini/data/models/article_model.dart';
import 'package:http/http.dart' as http;

abstract class NewsRemoteDataSource {
  Future<List<ArticleModel>> fetchArticleFromApi();
}

class NewsRemoteDataSourceImpl implements NewsRemoteDataSource {
  final client = http.Client();

  @override
  Future<List<ArticleModel>> fetchArticleFromApi() async {
    try {
      final response = await client.get(Uri.parse(
          'https://newsapi.org/v2/top-headlines?country=us&apiKey=26f598a045504aeca9e1c303f4974e0f'));
      if (response.statusCode == 200) {
        final Map<String, dynamic> responseBody = jsonDecode(response.body);
        final List<dynamic> articlesJson = responseBody['articles'];
        final List<ArticleModel> articles =
            articlesJson.map((json) => ArticleModel.fromJson(json)).toList();
        return articles;
      } else {
        throw Exception('Failed to load News Articles');
      }
    } catch (e) {
      throw Exception("$e");
    }
  }
}
