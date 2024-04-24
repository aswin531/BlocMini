import 'package:blocmini/presentation/screens/news/news_page.dart';
import 'package:blocmini/presentation/screens/news/newsbloc/newsbloc_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NewsWrapper extends StatelessWidget {
  const NewsWrapper({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NewsBloc(),
       child: const HomeScreen(),
    );
  }
}
