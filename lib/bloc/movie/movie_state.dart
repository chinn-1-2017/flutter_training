import 'package:equatable/equatable.dart';
import 'package:newsapp/models/base_model.dart';

abstract class MovieState extends Equatable {
  const MovieState();

  @override
  List<Object> get props => [];
}

class MovieInitial extends MovieState {}

class MovieFailure extends MovieState {}

class MovieSuccess extends MovieState {
  final List<MovieModel> movies;

  const MovieSuccess({
    this.movies,
  });

  MovieSuccess copyWith({
    List<MovieModel> movies,
    bool hasReachedMax,
  }) {
    return MovieSuccess(
      movies: movies ?? this.movies,
    );
  }

  @override
  List<Object> get props => [movies];

  @override
  String toString() =>
      'MovieLoaded { movies: ${movies.length} }';
}
