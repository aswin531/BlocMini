// ignore_for_file: avoid_print

import 'dart:convert';

import 'package:blocmini/data/models/article_model.dart';
import 'package:http/http.dart' as http;

abstract class NewsRemoteDataSource {
  Future<List<ArticleModel>> fetchArticleFromApi(String endpoint);
}

class NewsRemoteDataSourceImpl implements NewsRemoteDataSource {
  final http.Client client;
  final String baseUrl;
  final String apiKey;

  NewsRemoteDataSourceImpl(
      {required this.client, required this.baseUrl, required this.apiKey});

  @override
  Future<List<ArticleModel>> fetchArticleFromApi(String endpoint) async {
    try {
      final response =
          await client.get(Uri.parse('$baseUrl/$endpoint?apiKey=$apiKey'));
      if (response.statusCode == 200) {
        print(response);
        final List<dynamic> responseBody = jsonDecode(response.body);
        final List<ArticleModel> articles =
            responseBody.map((json) => ArticleModel.fromJson(json)).toList();
        return articles;
      } else {
        throw Exception('Failed to load News');
      }
    } catch (e) {
      print('Error fetching News Articles: $e');
      throw Exception('Failed to fetch News Articles: $e');
    }
  }
}

class NewsApiConfig {
  static const String baseUrl = 'https://newsapi.org/v2';
  static const String apiKey = '26f598a045504aeca9e1c303f4974e0f';
}

const String countryQuery = 'us';
const String categoryQuery = 'general';

void main() async {
  final client = http.Client();
  final remoteDataSource = NewsRemoteDataSourceImpl(
    client: client,
    baseUrl: NewsApiConfig.baseUrl,
    apiKey: NewsApiConfig.apiKey,
  );

  try {
    final articles = await remoteDataSource.fetchArticleFromApi(
        'top-headlines?country=$countryQuery&category=$categoryQuery');
    // Handle articles
  } catch (e) {
    print('Error: $e');
  } finally {
    client.close();
  }
}
