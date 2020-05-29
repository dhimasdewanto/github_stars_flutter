import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:github_stars_flutter/core/dependency_injection/dependency_injection.dart';
import 'package:github_stars_flutter/core/failure.dart';
import 'package:github_stars_flutter/data/models/github_stars_api_model.dart';
import 'package:github_stars_flutter/data/source/github_stars_network_source.dart';
import 'package:github_stars_flutter/domain/entities/github_stars.dart';
import 'package:github_stars_flutter/domain/repositories/github_stars_repo.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: GithubStarsRepo)
@Environment(Env.prod)
@lazySingleton
class GithubStarsRepoData implements GithubStarsRepo {
  GithubStarsRepoData({
    @required this.githubStarsNetworkSource,
  });

  GithubStarsNetworkSource githubStarsNetworkSource;

  @override
  Future<Either<Failure, List<GithubStars>>> getListGithubStars(int page) async {
    if (page == 0) {
      return left(DefaultFailure(message: "Page cannot be zero."));
    }

    final dataFromApi = await githubStarsNetworkSource.getGithubStarsApi(page);

    final listGithubStars = _convertApiModelToEntity(dataFromApi);

    return right(listGithubStars);
  }

  @override
  Future<Either<Failure, List<GithubStars>>> searchGithubStars(
    String searchText,
    int page,
  ) async {
    if (page == 0) {
      return left(DefaultFailure(message: "Page cannot be zero."));
    }

    final dataFromApi = await githubStarsNetworkSource.getGithubStarsApi(
      page,
      searchQuery: searchText,
    );

    final listGithubStars = _convertApiModelToEntity(dataFromApi);

    return right(listGithubStars);
  }

  List<GithubStars> _convertApiModelToEntity(GithubStarsApiModel dataFromApi) {
    return dataFromApi.items.map<GithubStars>((repo) {
      return GithubStars(
        id: repo.id,
        description: repo.description,
        license: repo.license != null ? repo.license.spdxId : "None",
        name: repo.name,
        openIssues: repo.openIssues,
        ownerName: repo.owner.login,
        ownerImageUrl: repo.owner.avatarUrl,
        programmingLanguage: repo.language,
        starsCount: repo.stargazersCount,
      );
    }).toList();
  }
}
