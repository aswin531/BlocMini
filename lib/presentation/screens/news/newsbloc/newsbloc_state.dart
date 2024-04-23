import 'package:equatable/equatable.dart';

abstract class NewsState extends Equatable {
  @override
  List<Object?> get props => throw UnimplementedError();
}

class NewsInitialState extends NewsState {}

class NewsLoadingState extends NewsState {}

class NewsLoadedState extends NewsState {
  final List<Map<String, dynamic>> news;
  NewsLoadedState({required this.news});
  @override
  List<Object?> get props => throw UnimplementedError();
}

class NewsErrorState extends NewsState {
  final String message;
  NewsErrorState({required this.message});
  @override
  List<Object?> get props => throw UnimplementedError();
}
