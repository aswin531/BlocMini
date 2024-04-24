import 'package:blocmini/presentation/screens/news/newsbloc/newsbloc_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:blocmini/presentation/screens/news/newsbloc/newsbloc_bloc.dart';

class NewsDetailPage extends StatelessWidget {
  final int? newsId;
  final NewsBloc newsBloc;

  const NewsDetailPage({super.key, this.newsId, required this.newsBloc});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: const Text('News Detail'),
      ),
      body: BlocBuilder<NewsBloc, NewsState>(
        // cubit: newsBloc,
        builder: (context, state) {
          // Your builder logic here
          // Access state and display detailed information accordingly
          return Container(); // Return your UI components
        },
      ),
    );
  }
}
