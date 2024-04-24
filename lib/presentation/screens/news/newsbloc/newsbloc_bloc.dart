import 'package:blocmini/domain/usecases/article_usecase.dart';
import 'package:blocmini/presentation/screens/news/newsbloc/newsbloc_event.dart';
import 'package:blocmini/presentation/screens/news/newsbloc/newsbloc_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NewsBloc extends Bloc<NewsEvent, NewsState> {
  NewsBloc() : super(const NewsInitialState()) {
    on<NewsRequestedEvent>((event, emit) async {
      try {
        final articles = await ArticleUseCases().fetchNewsFromDataSource();
        emit(NewsLoadedState(news: articles));
      } catch (e) {
        emit(NewsErrorState(message: e.toString()));
      }
    });
  }
}
