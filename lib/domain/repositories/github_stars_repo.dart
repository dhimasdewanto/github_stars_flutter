import 'package:dartz/dartz.dart';
import 'package:github_stars_flutter/core/failure.dart';
import 'package:github_stars_flutter/domain/entities/github_stars.dart';

abstract class GithubStarsRepo {
  Future<Either<Failure, List<GithubStars>>> getListGithubStars(int page);
  Future<Either<Failure, List<GithubStars>>> searchGithubStars(String searchText, int page);
}