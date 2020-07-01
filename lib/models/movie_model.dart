class MovieModel {
  final int id;
  final String title;
  final String message;
  final String posterPath;
  final String backdropPath;
  final String originalTitle;
  final List genreIds;
  final double voteAverage;
  final String overview;
  final String releaseDate;

  MovieModel({
    this.id,
    this.title,
    this.message,
    this.posterPath,
    this.backdropPath,
    this.originalTitle,
    this.genreIds,
    this.voteAverage,
    this.overview,
    this.releaseDate,
  });

  List<Object> get props => [
    id,
    title,
    message,
    posterPath,
    backdropPath,
    originalTitle,
    genreIds,
    voteAverage,
    overview,
    releaseDate,
  ];
}
