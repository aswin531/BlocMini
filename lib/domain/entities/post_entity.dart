import 'dart:convert';
import 'package:http/http.dart' as http;

class PostMethod {
  final int id;
  final String title;
  final String description;

  PostMethod(
      {required this.id, required this.title, required this.description});

  factory PostMethod.fromJson(Map<String, dynamic> json) => PostMethod(
      id: json['id'], title: json['title'], description: json['body']);
}

Future<PostMethod> createPost(String title, String body) async {
  final Map<String, dynamic> requestBody = {'title': title, 'body': body};
  final uri = Uri.parse('https://jsonplaceholder.typicode.com/posts');
  final response = await http.post(uri, body: requestBody);

  if (response.statusCode == 201) {
    return PostMethod.fromJson(jsonDecode(response.body));
  } else {
    throw Exception(
        "Failed to create post. Status code: ${response.statusCode}");
  }
}
