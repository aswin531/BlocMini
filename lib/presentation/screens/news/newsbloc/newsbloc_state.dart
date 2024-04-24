import 'package:blocmini/domain/entities/article_entity.dart';
import 'package:equatable/equatable.dart';

abstract class NewsState extends Equatable {
  const NewsState();

  @override
  List<Object?> get props => [];
}

class NewsInitialState extends NewsState {
  const NewsInitialState();

  @override
  List<Object?> get props => [];
}

class NewsLoadingState extends NewsState {
  const NewsLoadingState();

  @override
  List<Object?> get props => [];
}

class NewsLoadedState extends NewsState {
  final List<ArticleEntity> news;

  const NewsLoadedState({required this.news});

  @override
  List<Object?> get props => [news];
}

class NewsErrorState extends NewsState {
  final String message;

  const NewsErrorState({required this.message});

  @override
  List<Object?> get props => [message];
}
