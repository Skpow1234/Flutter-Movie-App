import 'package:Movie_App_Flutter/core/errors/server_failure.dart';
import 'package:Movie_App_Flutter/domain/entities/Movie.dart';
import 'package:dartz/dartz.dart';

abstract class MovieRepository{
  Future<Either<Failure,List<Movie>>> getTrendingMovies();
  Future<Either<Failure,List<Movie>>> searchMovies(String query);
  Future<Either<Failure,List<Movie>>> getPopularMovies();
}