import 'package:dartz/dartz.dart';
import 'package:Movie_App_Flutter/core/errors/server_failure.dart';
import 'package:Movie_App_Flutter/domain/entities/Movie.dart';
import 'package:Movie_App_Flutter/domain/repositories/movie_repository.dart';

class SearchMovies{
  final MovieRepository repository;

  SearchMovies(this.repository);

  Future<Either<Failure, List<Movie>>> call(String query) async {
    return await repository.searchMovies(query);
  }
}