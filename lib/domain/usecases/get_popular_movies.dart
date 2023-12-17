import 'package:dartz/dartz.dart';
import 'package:Movie_App_Flutter/core/errors/server_failure.dart';
import 'package:Movie_App_Flutter/domain/entities/Movie.dart';
import 'package:Movie_App_Flutter/domain/repositories/movie_repository.dart';

class GetPopularMovies{
  final MovieRepository repository;

  GetPopularMovies(this.repository);

  Future<Either<Failure, List<Movie>>> call() async {
    return await repository.getPopularMovies();
  }
}