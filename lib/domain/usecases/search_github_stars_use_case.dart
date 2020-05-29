import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:github_stars_flutter/core/failure.dart';
import 'package:github_stars_flutter/core/use_case.dart';
import 'package:github_stars_flutter/domain/entities/github_stars.dart';
import 'package:github_stars_flutter/domain/repositories/github_stars_repo.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class SearchGithubStarsUseCase
    implements UseCase<List<GithubStars>, SearchGithubStarsUseCaseParams> {
  SearchGithubStarsUseCase({
    @required this.repo,
  });

  final GithubStarsRepo repo;

  @override
  Future<Either<Failure, List<GithubStars>>> call(
    SearchGithubStarsUseCaseParams params,
  ) {
    return validate(params).fold(
      (failure) => Future.value(left(failure)),
      (value) => repo.searchGithubStars(params.search, params.page),
    );
  }

  @override
  Either<Failure, Unit> validate(SearchGithubStarsUseCaseParams params) {
    if (params.page <= 0) {
      return left(DefaultFailure(message: "Page cannot be zero."));
    }

    if (params.search.length <= 2) {
      return left(DefaultFailure(message: "Minimum search text is 3."));
    }

    return right(unit);
  }
}

@immutable
class SearchGithubStarsUseCaseParams {
  SearchGithubStarsUseCaseParams({
    @required this.page,
    @required this.search,
  });

  final int page;
  final String search;
}

