import 'package:blocmini/presentation/core/utils/textstyles.dart';
import 'package:blocmini/presentation/screens/news/news_detailpage.dart';
import 'package:blocmini/presentation/screens/news/newsbloc/newsbloc_bloc.dart';
import 'package:blocmini/presentation/screens/news/newsbloc/newsbloc_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomBodyHome extends StatelessWidget {
  const CustomBodyHome({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => NewsDetailPage(
              // newsId: newsId,
              newsBloc:
                  BlocProvider.of<NewsBloc>(context), // Pass the Bloc instance
            ),
          ),
        );
      },
      child: Container(
        padding: const EdgeInsets.all(20),
        width: double.infinity,
        height: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Breaking News",
              style: MyTextStyles.breakNews,
            ),
            Expanded(child: BlocBuilder<NewsBloc, NewsState>(
              builder: (context, state) {
                // print(state.props);
                if (state is NewsInitialState) {
                  return const Text("");
                } else if (state is NewsLoadingState) {
                  return const Center(
                    child: CircularProgressIndicator(
                      color: Colors.black,
                    ),
                  );
                } else if (state is NewsLoadedState) {
                  return ListView.separated(
                    separatorBuilder: (context, index) => Divider(
                      thickness: 1,
                      color: Colors.black
                          .withOpacity(BorderSide.strokeAlignCenter),
                    ),
                    scrollDirection: Axis.vertical,
                    itemCount: state.news.length,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: const EdgeInsets.symmetric(horizontal: 10.0),
                        width: 300,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              state.news[index].urlToImage != null
                                  ? Image.network(
                                      state.news[index].urlToImage!,
                                      height: 250,
                                      width: double.infinity,
                                      fit: BoxFit.cover,
                                    )
                                  : FadeInImage.assetNetwork(
                                      placeholder: 'assets/default.jpg',
                                      image: 'assets/default.jpg',
                                      height: 150,
                                      width: double.infinity,
                                      fit: BoxFit.cover,
                                    ),
                              const SizedBox(height: 10),
                              Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Text(
                                  "${state.news[index].title}",
                                  style: const TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Text(
                                  "${state.news[index].description}",
                                  style: const TextStyle(fontSize: 18),
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  );
                } else if (state is NewsErrorState) {
                  return Center(
                    child: Text(state.message),
                  );
                }
                return const Text(
                  "Some Error Occured",
                  style: TextStyle(color: Colors.red),
                );
              },
            ))
          ],
        ),
      ),
    );
  }
}
