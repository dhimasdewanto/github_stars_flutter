import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:github_stars_flutter/core/failure.dart';
import 'package:github_stars_flutter/core/use_case.dart';
import 'package:github_stars_flutter/domain/entities/github_stars.dart';
import 'package:github_stars_flutter/domain/repositories/github_stars_repo.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class GetAllGithubStarsUseCase
    implements UseCase<List<GithubStars>, GetAllGithubStarsUseCaseParams> {
  GetAllGithubStarsUseCase({
    @required this.repo,
  });

  final GithubStarsRepo repo;

  @override
  Future<Either<Failure, List<GithubStars>>> call(
    GetAllGithubStarsUseCaseParams params,
  ) {
    return validate(params).fold(
      (failure) => Future.value(left(failure)),
      (value) => repo.getListGithubStars(params.page),
    );
  }

  @override
  Either<Failure, Unit> validate(GetAllGithubStarsUseCaseParams params) {
    if (params.page > 0) {
      return right(unit);
    }

    return left(DefaultFailure(message: "Page cannot be zero."));
  }
}

@immutable
class GetAllGithubStarsUseCaseParams {
  GetAllGithubStarsUseCaseParams({
    @required this.page,
  });

  final int page;
}
