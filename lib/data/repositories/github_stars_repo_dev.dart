import 'package:flutter/foundation.dart';
import 'package:github_stars_flutter/core/dependency_injection/dependency_injection.dart';
import 'package:github_stars_flutter/data/models/github_stars_api_model.dart';
import 'package:github_stars_flutter/data/source/github_stars_network_source.dart';
import 'package:github_stars_flutter/domain/entities/github_stars.dart';
import 'package:github_stars_flutter/domain/repositories/github_stars_repo.dart';
import 'package:injectable/injectable.dart';

@RegisterAs(GithubStarsRepo)
@Environment(Env.dev)
@lazySingleton
class GithubStarsRepoDev implements GithubStarsRepo {
  GithubStarsRepoDev({
    @required this.githubStarsNetworkSource,
  });

  GithubStarsNetworkSource githubStarsNetworkSource;

  @override
  Future<List<GithubStars>> getListGithubStars(int page) async {
    if (page == 0) {
      throw Exception("Page cannot be zero (0)");
    }

    final dataFromApi = await githubStarsNetworkSource.getGithubStarsApi(page);

    final listGithubStars = _convertApiModelToEntity(dataFromApi);

    return listGithubStars;
  }

  List<GithubStars> _convertApiModelToEntity(GithubStarsApiModel dataFromApi) {
    return dataFromApi.items.map<GithubStars>((repo) {
      return GithubStars(
        id: repo.id,
        description: repo.description,
        license: repo.license.spdxId,
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