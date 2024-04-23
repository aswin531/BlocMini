import 'package:blocmini/presentation/screens/news/newsbloc/newsbloc_event.dart';
import 'package:blocmini/presentation/screens/news/newsbloc/newsbloc_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NewsBloc extends Bloc<NewsEvent, NewsState> {
  NewsBloc() : super(NewsInitialState()) {
    on<NewsRequestedEvent>((event, emit) {
      emit(NewsLoadingState());
      Future.delayed(Duration(seconds: 2), () {});
    });
  }
}
